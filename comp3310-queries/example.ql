/**
 * @name Comp3310 workshop 6 query
 * @kind problem
 * @problem.severity warning
 * @id java/example/empty-block
 */

import java

from MethodAccess call, LoopStmt loop
where 
    loop.getAChild*() = call.getEnclosingStmt() and
    call.getMethod().hasName("nextLine") and
    call.getMethod().getDeclaringType().hasQualifiedName("java.util", "Scanner")
select call, "This is a call to the nextline method within a loop" 
