trigger Payslip on Employee_Detail__c (before insert,after insert,before update,after update,before delete,after delete) {
    if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
        payslipproject.task3(trigger.new);
    }
    if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
        payslipproject.task4(trigger.new);
    }
    if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
        payslipproject.task5(trigger.new);
    }
    if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
        payslipproject.task6(trigger.new);
    }
    if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
        payslipproject.task8(trigger.new);
    }
    if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
        payslipproject.task9(trigger.new);
    } 
    if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
        payslipproject.task92(trigger.new);
}
    if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
        payslipproject.task10(trigger.new);
}
    if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
        payslipproject.task11(trigger.new);
    }
}