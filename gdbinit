# System-wide GDB initialization file.

define arm_isa
  if ($cpsr & 0x20)
    printf "Using THUMB(2) ISA\n"
  else
    printf "Using ARM ISA\n"
  end
end


define arm_cpsr
  if ($cpsr & 0x80000000)
    printf "N-Negative = 1 \n"
  else
    printf "N-Negative = 0\n"
  end

  if ($cpsr & 0x40000000)
    printf "Z-Zero = 1\n"
  else
    printf "Z-Zero = 0\n"
  end
  
  if ($cpsr & 0x20000000)
    printf "C-Carry = 1\n"
  else
    printf "C-Carry = 0\n"
  end

  if ($cpsr & 0x10000000)
    printf "V-Overflow = 1\n"
  else
    printf "V-Overflow = 0\n"
  end

  if ($cpsr & 0x08000000)
    printf "Q-Saturation = 1 \n"
  else
    printf "Q-Saturation = 0\n"
  end


  if ($cpsr & 0x00000200)
    printf "Endianess = BE \n"
  else
    printf "Endianess = LE\n"
  end

  if ($cpsr & 0x00000020)
    printf "ISA = Thumb \n"
  else
    printf "ISA = ARM \n"
  end

  printf "GE = "
  print $cpsr & 0x000F0000

  printf "MODE = "
  print  $cpsr & 0x0000001F
end

