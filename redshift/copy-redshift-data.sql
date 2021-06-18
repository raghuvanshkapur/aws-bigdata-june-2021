copy users from 's3://rgv-awssampledbuswest2/tickit/allusers_pipe.txt' 
credentials 'aws_iam_role=arn:aws:iam::511176627079:role/rgv-emr-redshift-fullaccess' 
delimiter '|' region 'us-east-1';

copy venue from 's3://rgv-awssampledbuswest2/tickit/venue_pipe.txt' 
credentials 'aws_iam_role=arn:aws:iam::511176627079:role/rgv-emr-redshift-fullaccess' 
delimiter '|' region 'us-east-1';

copy category from 's3://rgv-awssampledbuswest2/tickit/category_pipe.txt' 
credentials 'aws_iam_role=arn:aws:iam::511176627079:role/rgv-emr-redshift-fullaccess' 
delimiter '|' region 'us-east-1';

copy date from 's3://rgv-awssampledbuswest2/tickit/date2008_pipe.txt' 
credentials 'aws_iam_role=arn:aws:iam::511176627079:role/rgv-emr-redshift-fullaccess' 
delimiter '|' region 'us-east-1';

copy event from 's3://rgv-awssampledbuswest2/tickit/allevents_pipe.txt' 
credentials 'aws_iam_role=arn:aws:iam::511176627079:role/rgv-emr-redshift-fullaccess' 
delimiter '|' region 'us-east-1';

copy listing from 's3://rgv-awssampledbuswest2/tickit/listings_pipe.txt' 
credentials 'aws_iam_role=arn:aws:iam::511176627079:role/rgv-emr-redshift-fullaccess' 
delimiter '|' region 'us-east-1';

copy sales from 's3://rgv-awssampledbuswest2/tickit/sales_tab.txt'
credentials 'aws_iam_role=arn:aws:iam::511176627079:role/rgv-emr-redshift-fullaccess' 
delimiter '|' region 'us-east-1'; -- DOESN'T WORK

copy sales from 's3://rgv-awssampledbuswest2/tickit/sales_pipe.txt'
credentials 'aws_iam_role=arn:aws:iam::511176627079:role/rgv-emr-redshift-fullaccess' 
timeformat as 'MM/DD/YYYY HH:MI:SS'
IGNOREBLANKLINES
delimiter '|' region 'us-east-1';

copy sales from 's3://rgv-awssampledbuswest2/tickit/sales_tab.txt'
credentials 'aws_iam_role=arn:aws:iam::511176627079:role/rgv-emr-redshift-fullaccess' 
timeformat as 'MM/DD/YYYY HH:MI:SS'
IGNOREBLANKLINES
delimiter '\t' region 'us-east-1';