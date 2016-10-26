/** ---*- C++ -*--- ConnectFunctions.cpp --------------------------
 * This cpp file implements some functions for connecting callers and callees, using parameter trees.
 *
 */

#include "ConnectFunctions.h"

static int id = 0;
static int debug_id = 0;
//static int debug_id = 0


ArgumentWrapper* getArgWrapper(FunctionWrapper *funcW, Argument *arg){
  for(list<ArgumentWrapper*>::iterator argWI = funcW->getArgWList().begin(),
	argWE = funcW->getArgWList().end(); argWI != argWE; ++argWI){
    if( (*argWI)->getArg() == arg)
      return *argWI;
  }
  return nullptr;
}

void buildTypeTree(Argument *arg, TypeWrapper *tyW, TreeType treeTy){
  
  // errs() << "\n" << "buildTypeTree in TIME: " << "\n";

  if(arg == nullptr){
    // errs() << "In buildTypeTree, incomming arg is a nullptr\n";
    exit(1);
  }
  if(tyW->getType()->isPointerTy()){
    //   errs() << "IN buildTypeTree, ty = "<< *tyW->getType() << "is a pointer type. arg_addr = " << arg << " *arg = " << *arg << "\n";
    //errs() << "NumContainedTypes = " << tyW->getType()->getContainedType(0)->getNumContainedTypes() << "\n";

    //find inserting loction
    tree<InstructionWrapper*>::iterator insert_loc;

    ArgumentWrapper *pArgW = getArgWrapper(FunctionWrapper::funcMap[arg->getParent()], arg);

    if(pArgW == nullptr){
      errs() << "getArgWrapper returns a NULL pointer!" << "\n";
      exit(1);
    }
    else{
      if(pArgW->getArg() == arg){
	for(tree<InstructionWrapper*>::iterator treeIt = pArgW->getTree(treeTy).begin(), 
	      treeE = pArgW->getTree(treeTy).end(); treeIt != treeE; ++treeIt){
	  if((*treeIt)->getFieldId() == tyW->getId()){
	    insert_loc = treeIt;
	    break;
	  }
	}//end for tree iteration

	//if ty is a pointer, its containedType [ty->getContainedType(0)] means the type ty points to
	for(unsigned int i = 0; i < tyW->getType()->getContainedType(0)->getNumContainedTypes(); i++){
	  //	  errs() << "containedType " << i << " " << *tyW->getType()->getContainedType(0)->getContainedType(i) << "\n";

	  TypeWrapper *tempTyW = new TypeWrapper(tyW->getType()->getContainedType(0)->getContainedType(i),id);
	  InstructionWrapper *typeFieldW = new InstructionWrapper(arg->getParent(),arg,tempTyW->getType(),id++,PARAMETER_FIELD);
	  InstructionWrapper::nodes.insert(typeFieldW);

	  pArgW->getTree(treeTy).append_child(insert_loc,typeFieldW);
	  
	  //recursion, e.g. linked list
      	  if(tempTyW->getType() == tyW->getType())
	    continue;

	  buildTypeTree(arg, tempTyW, treeTy);
	}//end for ty getContainedType

      }// end if pArgW->getArg() == arg
    }// end else (pArgW != nullptr)

  }//end if isPointerTy

  else{
    if(arg != nullptr)
      // errs() << *tyW->getType() << " is a Non-pointer type. arg = " << *arg << "\n";
      ;
    else
      errs() << "arg is nullptr!\n";
  }   
}


void buildTree(Argument *arg, TreeType treeTy){

  InstructionWrapper *treeTyW = nullptr;

  switch(treeTy){
  case ACTUAL_IN_TREE:{
    treeTyW = new InstructionWrapper(arg->getParent(), arg, arg->getType(), id, ACTUAL_IN);
    break;
  }
  case ACTUAL_OUT_TREE:{
    treeTyW = new InstructionWrapper(arg->getParent(), arg, arg->getType(), id, ACTUAL_OUT);
    break;
  }
  case FORMAL_IN_TREE:{
    treeTyW = new InstructionWrapper(arg->getParent(), arg, arg->getType(), id, FORMAL_IN);
    break;
  }
  case FORMAL_OUT_TREE:{
    treeTyW = new InstructionWrapper(arg->getParent(), arg, arg->getType(), id, FORMAL_OUT);
    break;
  }  
  default:
    errs() << "Wrong TreeType input! \n";
    exit(1);
  }

  if(treeTyW != nullptr)
    InstructionWrapper::nodes.insert(treeTyW);
  else{
    errs() << "treeTyW is a null pointer!" <<"\n";
    exit(1);
  }

  //  errs() << "in buildTree TEST" << "\n";
  //  errs() << "treeTyW->getArg() = " << *treeTyW->getArgument() << "\n";


  //find the right arg, and set tree root
  list<ArgumentWrapper*>::iterator argWLoc;
  for(list<ArgumentWrapper*>::iterator argWI = FunctionWrapper::funcMap[arg->getParent()]->getArgWList().begin(),
	argWE = FunctionWrapper::funcMap[arg->getParent()]->getArgWList().end(); argWI != argWE; ++argWI){
    if((*argWI)->getArg() == arg)
      argWLoc = argWI;
  }

  //  errs() << "in buildTree TEST middle\n";

  //  errs() << "*argWLoc->getArg() : " << *(*argWLoc)->getArg() << "\n";


  //  errs() << "tree size = " << (*argWLoc)->getTree(treeTy).size() << "tree type = " << treeTy << "\n";


  tree<InstructionWrapper*>::iterator treeRoot = (*argWLoc)->getTree(treeTy).set_head(treeTyW);  
  //  (*argWI)->getTree(treeTy).insert(treeRoot, treeTyW);

  //  errs() << "in buildTree TEST 2" << "\n";

  TypeWrapper *tyW = new TypeWrapper(arg->getType(),id++);


 //TODO: function ptr case...
  //avoid FILE* 
  string Str;
  raw_string_ostream OS(Str);
  OS << *tyW->getType();
  //FILE*, bypass, no need to buildTypeTree
  if("%struct._IO_FILE*" == OS.str() || "%struct._IO_marker*" == OS.str()){
    errs() << "OS.str() = " << OS.str() << " FILE* appears, stop buildTypeTree\n";      
  }
  else
    buildTypeTree(arg, tyW, treeTy);

  id = 0;
  // errs() << *arg << " ##########After buildTypeTree " << (*argWLoc)->getTree(treeTy).size() << "Tree Type = " << treeTy << "\n";
}

void buildParameterTrees(InstructionWrapper *InstW, Function* calleeFunc){

  // sequentially set up parameter trees for the each argument 		  
  std::list<ArgumentWrapper*>::iterator argI = 
    FunctionWrapper::funcMap[calleeFunc]->getArgWList().begin();
  std::list<ArgumentWrapper*>::iterator argE = 
    FunctionWrapper::funcMap[calleeFunc]->getArgWList().end();
  
  //  errs() << "buildParameterTrees getArgWList size = " <<  FunctionWrapper::funcMap[calleeFunc]->getArgWList().size() << "\n";
  //TODO for not executed!
  /*
    for(int i = 0; i < FunctionWrapper::funcMap[calleeFunc]->getArgWList().size(); i++){
    errs() << "i = " << i << "\n";
    buildTree((*FunctionWrapper::funcMap[calleeFunc]->getArgWList())->getArg(), ACTUAL_IN_TREE);
    buildTree((*argI)->getArg(), ACTUAL_OUT_TREE); 
    buildTree((*argI)->getArg(), FORMAL_IN_TREE);
    buildTree((*argI)->getArg(), FORMAL_OUT_TREE); 
    errs() << "After FORMAL_OUT_TREE construction!\n";

    }*/

  
  for(; argI != argE; ++argI){

    //    errs() << "inside buildParameterTrees Time = " << debug_id++ << "\n";
     
    buildTree((*argI)->getArg(), ACTUAL_IN_TREE);
    //    errs() << "After ACTUAL_IN_TREE construction!\n"; 
    buildTree((*argI)->getArg(), ACTUAL_OUT_TREE); 
    buildTree((*argI)->getArg(), FORMAL_IN_TREE);
    buildTree((*argI)->getArg(), FORMAL_OUT_TREE); 
  }

  FunctionWrapper::funcMap[calleeFunc]->setTreeFlag(true);

  //  errs() << " end of buildParameterTrees ! \n";
}
