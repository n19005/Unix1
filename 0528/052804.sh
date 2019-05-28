sudo find /var -type f | xargs sudo du | tac | head -n 5
