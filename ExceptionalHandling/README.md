# Exception Handling in PL/SQL

## Overview
This folder contains PL/SQL programs that demonstrate Exception Handling.

Exception Handling is used to handle runtime errors gracefully without abruptly terminating the program. It improves the reliability and robustness of PL/SQL applications.

## Topics Covered
- Predefined Exceptions
- User-Defined Exceptions
- RAISE Statement
- RAISE_APPLICATION_ERROR
- EXCEPTION Block
- WHEN OTHERS Handler

## Programs Included
1. NO_DATA_FOUND
2. TOO_MANY_ROWS
3. ZERO_DIVIDE
4. INVALID_NUMBER
5. VALUE_ERROR
6. User-Defined Exception
7. RAISE Statement
8. RAISE_APPLICATION_ERROR
9. WHEN OTHERS Example

## Basic Syntax

```sql
BEGIN
   -- Executable statements

EXCEPTION
   WHEN exception_name THEN
      -- Handle exception

   WHEN OTHERS THEN
      -- Handle all other exceptions
END;
/
```

## Purpose
- Prevent program termination due to runtime errors.
- Display meaningful error messages.
- Improve code reliability and maintainability.

---
**Author:** Mritunjay  
**Technology:** Oracle SQL & PL/SQL
