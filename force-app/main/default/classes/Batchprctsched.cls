global class Batchprctsched implements schedulable {
    global void execute(schedulablecontext sc){
        BatchPrct bp = new BatchPrct();
		database.executeBatch(bp);
    }

}