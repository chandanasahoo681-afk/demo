#1.

monthlySalary = 34500.0;

annualSalary = monthlySalary * 12;

print(f'Mr.Jaishnav Annual Salary is {annualSalary}');


#2.

totalDays = 126;
attendedDays = 94;

attendancePercentage = (attendedDays / totalDays) * 100;

print(f'Miss Pooja Mansi Attendance Percentage is {attendancePercentage}');


#3.

petrolPerLiterPrice = 108.96;
price = 300;

totalLiter = price / petrolPerLiterPrice;

print(f'{totalLiter} of petrol will come for {price}rs');


#4.

perWaterTin = 20;
perDay = 6;

perDayCost = perWaterTin * perDay;
augustBill = perDayCost * 30;

print(f'Water Tin : {perWaterTin}');
print(f'Total water Tin per Day : {perDay}');
print('-------------------------------------------------');
print(f'Bill of August : {augustBill}');


#5.

pizzaCost = 326.50;
quantity = 3;
discountPercentage = 20;

billAmount = pizzaCost * quantity;
discountedAmount = billAmount * (discountPercentage / 100);
finalBill = billAmount - discountedAmount;

print(f'Pizza : {pizzaCost}');
print(f'Quantity : {quantity}');
print('----------------------------------------');
print(f'Total Amount : {billAmount}');
print(f'Discount : {discountPercentage}%');
print('-----------------------------------------');
print(f'Final Amount : {finalBill}');


#6.

annualSalary = float(input('Enter your Annual Salary : '));
hikePercentage = float(input('Enter your Hike Percentage : '));

hikeAmount = annualSalary * (hikePercentage / 100);
newAnnualSalary = annualSalary + hikeAmount;
monthlySalary = newAnnualSalary / 12;

print(f'Your new Monthly Salary is {monthlySalary}');


#7.

perKGPrice = float(input('Enter Mango Price : '));
quantity = float(input('Enter total quantity : '));
discountPercentage = 22;

billAmount = perKGPrice * quantity;
discountedAmount = billAmount * (discountPercentage / 100);
totalBillAmount = billAmount - discountedAmount;

print(f'Mango Price : {perKGPrice}');
print(f'Quantity : {quantity}');
print('--------------------------------------');
print(f'Amount : {billAmount}');
print(f'Discount : {discountPercentage}%');
print('--------------------------------------');
print(f'Total Amount : {totalBillAmount}');


#8.

totalGB = float(input('Enter total GB : '));
perGBPrice = 30;

totalCost = totalGB * perGBPrice;

print(f'Total Cost for {totalGB} GB is {totalCost}');


#9.

totalReports = int(input('Enter number of Reports : '));
perReportTime = 3;

totalTime = totalReports * perReportTime;

print(f'Total Time required to generate {totalReports} Reports is {totalTime}');


#10.

totalRecords = int(input('Enter number of Records : '));
perRecord = 2;

totalSeconds = totalRecords * perRecord;
totalHours = totalSeconds / 3600;

print(f'Total {totalHours} hrs is required to clean {totalRecords} records');

