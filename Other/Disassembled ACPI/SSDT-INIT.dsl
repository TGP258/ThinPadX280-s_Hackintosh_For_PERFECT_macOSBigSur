/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210331 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/aimai.who/Desktop/acpi/SSDT-INIT.aml, Sun Oct 17 11:37:07 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000008C (140)
 *     Revision         0x02
 *     Checksum         0xED
 *     OEM ID           "X280"
 *     OEM Table ID     "INIT"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210331 (539034417)
 */
DefinitionBlock ("", "SSDT", 2, "X280", "INIT", 0x00001000)
{
    External (_SB_.PCI0, DeviceObj)
    External (DPTF, FieldUnitObj)
    External (HPTE, FieldUnitObj)
    External (OSYS, FieldUnitObj)
    External (WNTF, FieldUnitObj)

    Method (OINI, 0, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            Debug = "Set Variables..."
            HPTE = Zero
            OSYS = 0x07DF
        }
    }
}

