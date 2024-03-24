# Company Data Analysis with Prolog

## Overview

This Prolog program provides a simplistic model for representing and querying data related to employees of a company. It includes functionality to query basic employee information, such as wage and family status, and calculate benefits based on marital status and the number of children.

## Files

- `company.ecl`: Contains the Prolog code with predicates to manage and query employee data.

## Features

- **Employee Data Representation**: Represents basic data of employees, including name, position, wage, marital status, and the number of children.
- **Wage Query**: Allows querying an employee's wage.
- **Single Parents Query**: Identifies single employees with one or more children.
- **Benefit Calculation**: Calculates the benefit amount for an employee based on their marital status and the number of children.

## Predicates

### wage(Empl, Wage)

- **Description**: Retrieves the wage of a specified employee.
- **Arguments**:
  - `Empl`: Employee's name.
  - `Wage`: Wage of the employee.

### single_with_children(Empl, N)

- **Description**: Identifies if a single employee has children and counts them.
- **Arguments**:
  - `Empl`: Employee's name.
  - `N`: Number of children the employee has.

### benefit(Name, Wage, Benefit)

- **Description**: Calculates the benefit amount for an employee based on marital status and number of children.
- **Arguments**:
  - `Name`: Employee's name.
  - `Wage`: Employee's wage.
  - `Benefit`: Calculated benefit amount.

### calculate_benefit(Status, ChildrenCount, Benefit)

- **Description**: Helper predicate for calculating benefits.
- **Arguments**:
  - `Status`: Marital status of the employee.
  - `ChildrenCount`: Number of children the employee has.
  - `Benefit`: The benefit amount based on status and children count.

## Usage

To use this program, you must have a Prolog interpreter installed on your computer. Once installed, you can load the program by navigating to the directory containing `company_data.pl` and running the following command in your terminal:

```bash
swipl -s company_data.pl
```

After loading the file, you can query the predicates directly in the Prolog environment. For example:

```prolog
?- wage(john, Wage).
?- single_with_children(Empl, N).
?- benefit(Name, Wage, Benefit).
```

## License

This project is open-source and available under the [MIT License](https://opensource.org/licenses/MIT).
