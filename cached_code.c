  /*
  //TODO: code optimization
  //  set<Function*> function_set;
  llvm::LLVMContext& context = llvm::getGlobalContext();
  llvm::Module* server_module = new llvm::Module("server_module", context);
  llvm::Module* client_module = new llvm::Module("client_module", context);

  llvm::IRBuilder<> builder(context); 

  llvm::FunctionType *funcType_S = llvm::FunctionType::get(builder.getInt32Ty(), false);
  llvm::Function *mainFunc_S = llvm::Function::Create(funcType_S, llvm::Function::ExternalLinkage, "main", server_module);
  llvm::BasicBlock *entry_S = llvm::BasicBlock::Create(context, "entrypoint", mainFunc_S);
  builder.SetInsertPoint(entry_S);

  llvm::FunctionType *funcType_C = llvm::FunctionType::get(builder.getInt32Ty(), false);
  llvm::Function *mainFunc_C = llvm::Function::Create(funcType_C, llvm::Function::ExternalLinkage, "main", client_module);
  llvm::BasicBlock *entry_C = llvm::BasicBlock::Create(context, "entrypoint", mainFunc_C);
  builder.SetInsertPoint(entry_C);
  
  //  insertFunctionsToModules(fuction_set, server_module, client_module);

  server_module->dump();
  client_module->dump();

  std::string fileNameServer = "server_module.bc";
  std::string errStr = "";
  raw_fd_ostream outfile_server(fileNameServer.c_str(),errStr,sys::fs::F_RW);
  WriteBitcodeToFile(server_module, outfile_server);

  std::string fileNameClient = "client_module.bc";
  //  std::string errStr = "";
  raw_fd_ostream outfile_client(fileNameClient.c_str(),errStr,sys::fs::F_RW);
  WriteBitcodeToFile(client_module, outfile_client);


  return false;*/




  tnameS *head = (struct S*) malloc(sizeof(tnameS)); //head: 0x0001
  tnameS *tail = (struct S*) malloc(sizeof(tnameS)); //tail: 0x0002

  head->val =10;
  head->next = tail;


  /*
    int fi = 0;
    for(Module::iterator F = M.begin(), E = M.end(); F != E; ++F,++fi)
    {
    if((*F).isDeclaration()){
    //	errs() << fi << " " << (*F).getName() << " is defined outside!" << "\n";
    continue;
    }
    else{
    errs() << fi << " " << (*F).getName() << "\n";
    continue;
    }
      
    }*/

//TODO: temporary representation need to be revised, how to check which is caller and which is callee?
/*
  if(loadInstW_candidate->getFunction()->getName() == "main"){

  //find corresponding arg, by alias analysis
  for(Function::arg_iterator ai = storeInstW_candidate->getFunction()->arg_begin(); 
  ai != storeInstW_candidate->getFunction()->arg_end(); ++ai)
  {
  Value*  val = ai;
  val->setName(ai->getName());
  //		    errs() << "call_func args = " << *val << '\n'; 
  // this arg is an alias of loadInst
  if (AliasAnalysis::NoAlias != Global_AA->alias(Global_AA->getLocation(SI).Ptr, val)){

  errs() << "AA found! val = " << val << "\n";
 
  InstructionWrapper* pRWNode =  FunctionWrapper::funcMap[storeInstW_candidate->getFunction()]->getPointerRW(val);

  errs() << "pointer Read/Write Node! function : " << pRWNode->getFunctionName() << 
  "pRWNode = " << pRWNode << " val: " << *pRWNode->getValue() << "\n";
		    
  //TODO
  errs() << "storeInstW function :" << storeInstW_candidate->getFunctionName() << " " 
  << *storeInstW_candidate->getInstruction() << '\n';
  errs() << "loadInstW function :" << pRWNode->getFunctionName() << " " 
  << pRWNode->getInstruction() << pRWNode->getType() << '\n';


  PDG->addDependency(storeInstW_candidate, pRWNode, DATA_RAW);
  PDG->addDependency(pRWNode, loadInstW_candidate, DATA_RAW);

  }//end if
  }//end for	      		
  }//end fi storeInstW...main
*/	      

/*
  INITIALIZE_PASS(ProgramDependencyGraph, "pdg",
  "Program Dependency Graph Construction",
  true,
  true)
*/


#if 0
//use inter-procedure alias analysis to set up links between store and load instructions in callers and callees
for(std::set<InstructionWrapper*>::iterator nodeIt = InstructionWrapper::nodes.begin();
    nodeIt != InstructionWrapper::nodes.end(); ++nodeIt)
  {
    InstructionWrapper *loadInstW_candidate = *nodeIt;

    if(loadInstW_candidate->getInstruction() != nullptr && isa<LoadInst>(loadInstW_candidate->getInstruction())){

      LoadInst* LI = dyn_cast<LoadInst>(loadInstW_candidate->getInstruction());
      errs() << "LoadInst found! LI = "  << *LI << "\n";

      for(std::set<InstructionWrapper*>::iterator nodeIt2 = InstructionWrapper::nodes.begin();
	  nodeIt2 != InstructionWrapper::nodes.end(); ++nodeIt2){
	InstructionWrapper *storeInstW_candidate = *nodeIt2;

	if(storeInstW_candidate->getInstruction() != nullptr && isa<StoreInst>(storeInstW_candidate->getInstruction())){
	    
	  StoreInst* SI = dyn_cast<StoreInst>(storeInstW_candidate->getInstruction());

	  AliasAnalysis::AliasResult AA_result = Global_AA->alias(Global_AA->getLocation(LI), Global_AA->getLocation(SI));

	  if(AA_result != AliasAnalysis::NoAlias && loadInstW_candidate->getFunction() != storeInstW_candidate->getFunction()){
	      
	    errs() << "inter-procedure aliases found! LI = " << *LI << " SI = " << *SI << "\n";

	    //store in main ,load in callee
	    if(storeInstW_candidate->getFunction()->getName() == "main"){

	      //find corresponding arg, by alias analysis
	      for(Function::arg_iterator ai = loadInstW_candidate->getFunction()->arg_begin(); 
		  ai != loadInstW_candidate->getFunction()->arg_end(); ++ai){
		Value*  val = ai;
		val->setName(ai->getName());

		// this arg is an alias of loadInst
		if (AliasAnalysis::NoAlias != Global_AA->alias(Global_AA->getLocation(LI).Ptr, val)){
		  errs() << "AA found! val = " << val << "\n"; 
		  //TODO
		  PDG->addDependency(storeInstW_candidate, loadInstW_candidate, DATA_RAW);
		}//end if
	      }//end for	      		
	    }//end fi storeInstW...main
	  }
	}//end if (storeInstW...)
      }//for finding store...)
    }//end if (loadInstW...)
  }
#endif



#if 0
vector<Type*> typeList;

int fi = 0;
for(Module::iterator F = M.begin(), E = M.end(); F != E; ++F,++fi)
  {
    if((*F).isDeclaration()){
      //	errs() << fi << " " << (*F).getName() << " is defined outside!" << "\n";
      continue;
    }
    else{
      errs() << fi << " " << (*F).getName() << "\n";
	

      for (Function::iterator bi = (*F).begin(), be = (*F).end(); bi != be; ++bi) 
	{
	  BasicBlock &BB = *bi;
	 
	  for (BasicBlock::iterator ii = BB.begin(), ie = BB.end(); ii != ie; ++ii) 
	    {
	      //errs() << *ii << "\n";
	      if(isa<AllocaInst>(*ii)){
		Instruction *inst = &*ii;
	      
		AllocaInst* allocaInst = dyn_cast<AllocaInst>(inst);
		//		  errs() << *allocaInst << "\n";
		typeList.push_back(allocaInst->getAllocatedType());
		errs() << "typeList size = " << typeList.size() << "\n"; 
	      }
	    }
	}

      for(int i = 0 ; i < typeList.size(); i++){
	errs() <<"typeList["<< i <<"] = "<<  *typeList[i] << "\n";
      }

      StructType * ST1 = dyn_cast<StructType>(typeList[0]); 
      StructType * ST2 = dyn_cast<StructType>(typeList[1]); 


      if(ST1->isLayoutIdentical(ST2)){
	errs() <<"LayoutIdentical found: " << *ST1 << " == " << *ST2 << "\n";
      }
      else{
	errs() << "Layout different!\n ST1 = " << *ST1 <<"\n ST2 = "<< *ST2 << "\n";
	  
      }
      continue;
    }
      
  }

#endif


#if 0
M.getValueSymbolTable().dump();
for(llvm::ValueSymbolTable::iterator valIt = M.getValueSymbolTable().begin();
    valIt != M.getValueSymbolTable().end(); ++valIt){    
  errs() << *valIt << "\n";
 }
#endif

#if 0

  for(std::set<InstructionWrapper*>::iterator nodeIt = InstructionWrapper::nodes.begin();
      nodeIt != InstructionWrapper::nodes.end(); ++nodeIt){
    Instruction* inst = (*nodeIt)->getInstruction();

    //	  if(pInstruction != nullptr && InstW->getType() == INST && isa<CallInst>(pInstruction))

    if(inst != nullptr){
      if(isa<AllocaInst>(inst)){
	AllocaInst* allocaInst = dyn_cast<AllocaInst>(inst);
	if(allocaInst->getAlignment() == SENSITIVE){
	  errs() << "AllocaInst align 128\n";
	}
      }

      if(isa<StoreInst>(inst)){
	StoreInst* storeInst = dyn_cast<StoreInst>(inst);
	if(storeInst->getAlignment() == SENSITIVE){
	  errs() << "StoreInst align 128\n";
	}
      }

      if(isa<LoadInst>(inst)){
	LoadInst* loadInst = dyn_cast<LoadInst>(inst);
	if(loadInst->getAlignment() == SENSITIVE){
	  errs() << "LoadInst align 128 "<< *loadInst <<"\n";
	}
      }

    }

  }

  errs() << "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% assign nodes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n";
  int id = 0;
  for(std::set<InstructionWrapper*>::iterator nodeIt = InstructionWrapper::nodes.begin();
      nodeIt != InstructionWrapper::nodes.end(); ++nodeIt){
	
    InstructionWrapper *InstW = *nodeIt;
    InstW->setNodeId(id++);
  }


#endif
