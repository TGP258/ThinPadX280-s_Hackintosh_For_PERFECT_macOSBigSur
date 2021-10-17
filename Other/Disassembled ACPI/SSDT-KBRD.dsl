/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210331 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/aimai.who/Desktop/acpi/SSDT-KBRD.aml, Sun Oct 17 11:37:07 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001F0 (496)
 *     Revision         0x02
 *     Checksum         0x21
 *     OEM ID           "X280"
 *     OEM Table ID     "KBRD"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210331 (539034417)
 */
DefinitionBlock ("", "SSDT", 2, "X280", "KBRD", 0x00000000)
{
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.XQ65, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.KBD_, DeviceObj)

    Scope (_SB.PCI0.LPCB.EC)
    {
        Method (_Q65, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.KBD, 0x041E)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.XQ65 ()
            }
        }
    }

    Scope (\_SB.PCI0.LPCB.KBD)
    {
        If (_OSI ("Darwin"))
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (!Arg2)
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x04)
                {
                    "RM,oem-id", 
                    "LENOVO", 
                    "RM,oem-table-id", 
                    "X280"
                })
            }

            Name (RMCF, Package (0x02)
            {
                "Keyboard", 
                Package (0x0A)
                {
                    "ActionSwipeLeft", 
                    "37 d, 21 d, 21 u, 37 u", 
                    "ActionSwipeRight", 
                    "37 d, 1e d, 1e u, 37 u", 
                    "SleepPressTime", 
                    "500", 
                    "Swap command and option", 
                    ">y", 
                    "Custom PS2 Map", 
                    Package (0x03)
                    {
                        Package (0x00){}, 
                        "e037=64", 
                        "e01e=69"
                    }
                }
            })
        }
    }
}

