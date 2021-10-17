/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210331 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/aimai.who/Desktop/acpi/SSDT-HWAC.aml, Sun Oct 17 11:37:07 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000C2 (194)
 *     Revision         0x02
 *     Checksum         0xCA
 *     OEM ID           "X280"
 *     OEM Table ID     "HWAC"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210331 (539034417)
 */
DefinitionBlock ("", "SSDT", 2, "X280", "HWAC", 0x00001000)
{
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.HWAC, FieldUnitObj)
    External (HWAC, IntObj)

    Scope (\_SB.PCI0.LPCB.EC)
    {
        OperationRegion (ERAM, EmbeddedControl, Zero, 0x0100)
        Field (ERAM, ByteAcc, NoLock, Preserve)
        {
            Offset (0x36), 
            WAC0,   8, 
            WAC1,   8
        }

        Method (XWAC, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Local0 = (WAC1 << 0x08)
                Local0 |= WAC0 /* \_SB_.PCI0.LPCB.EC__.WAC0 */
                Return (Local0)
            }
            Else
            {
                Return (HWAC) /* External reference */
            }
        }
    }
}

