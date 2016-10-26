

//find and save all Store instructions in call_func
std::vector<Instruction*> StoreVec;
for(inst_iterator instIt = inst_begin(*call_func), E = inst_end(*call_func); instIt != E; ++instIt){
  Instruction *pInstruction = dyn_cast<Instruction>(&*instIt);          
  if(isa<StoreInst>(pInstruction))
    StoreVec.push_back(pInstruction);   
 }



	

for(int i = 0; i < StoreVec.size(); i++){
  errs() << "StoreInst = " << *StoreVec[i] << "\n";	

  StoreInst *pStoreInst = dyn_cast<StoreInst>(StoreVec[i]);

  errs() << "getValueOperand = " << *pStoreInst->getValueOperand()->getType() << " " 
	 << *pStoreInst->getValueOperand()->getType() << "\n";
  errs() << "TI2->getFieldType = " << *(*TI2)->getFieldType() << " " << (*TI2)->getFieldType() <<"\n";
	  
  if((*TI2)->getFieldType() == pStoreInst->getValueOperand()->getType()){
    errs() << "TI2->getFieldType == Store->getValueOp->getType() !\n";

    for(std::set<InstructionWrapper*>::iterator nodeIt = InstructionWrapper::nodes.begin();
	nodeIt != InstructionWrapper::nodes.end(); ++nodeIt){
	
      InstructionWrapper *candidateIW = *nodeIt;
      if(candidateIW->getInstruction() == StoreVec[i]){
	PDG->addDependency(*InstructionWrapper::nodes.find(*TI2), 
			   *InstructionWrapper::nodes.find(candidateIW), DATA_GENERAL);
      }
    }
  }//end if
 }//end for iteratoin on StoreVec
	
