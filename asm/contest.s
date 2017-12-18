	.include "constants/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_80AF1E4
sub_80AF1E4: @ 80AF1E4
	push {r4,r5,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, 24
	cmp r1, 0
	bne _080AF1FC
	adds r0, r5, 0
	adds r0, 0xA
	lsls r0, 24
	lsrs r3, r0, 24
	b _080AF1FE
_080AF1FC:
	movs r3, 0xE
_080AF1FE:
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	ldr r1, _080AF21C @ =gSharedMem + 0x19260
	adds r1, r0, r1
	ldrh r0, [r1, 0x6]
	cmp r0, 0
	bne _080AF228
	ldr r0, _080AF220 @ =gDisplayedStringBattle
	ldr r1, _080AF224 @ =gUnknownText_MissedTurn
	adds r2, r3, 0
	bl sub_80AE598
	b _080AF23A
	.align 2, 0
_080AF21C: .4byte gSharedMem + 0x19260
_080AF220: .4byte gDisplayedStringBattle
_080AF224: .4byte gUnknownText_MissedTurn
_080AF228:
	ldr r0, _080AF270 @ =gDisplayedStringBattle
	ldrh r2, [r1, 0x6]
	movs r1, 0xD
	muls r1, r2
	ldr r2, _080AF274 @ =gMoveNames
	adds r1, r2
	adds r2, r3, 0
	bl sub_80AE598
_080AF23A:
	adds r0, r5, 0
	bl sub_80AF2A0
	ldr r0, _080AF278 @ =gUnknown_03004210
	ldr r1, _080AF270 @ =gDisplayedStringBattle
	lsls r2, r5, 2
	adds r2, r5
	lsls r2, 18
	movs r3, 0xAE
	lsls r3, 18
	adds r2, r3
	lsrs r2, 16
	ldr r4, _080AF27C @ =gUnknown_083CA318
	lsls r5, 1
	adds r3, r5, r4
	ldrb r3, [r3]
	adds r4, 0x1
	adds r5, r4
	ldrb r4, [r5]
	str r4, [sp]
	bl sub_8003460
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AF270: .4byte gDisplayedStringBattle
_080AF274: .4byte gMoveNames
_080AF278: .4byte gUnknown_03004210
_080AF27C: .4byte gUnknown_083CA318
	thumb_func_end sub_80AF1E4

	thumb_func_start unref_sub_80AF280
unref_sub_80AF280: @ 80AF280
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	movs r4, 0
_080AF288:
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_80AF1E4
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _080AF288
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end unref_sub_80AF280

	thumb_func_start sub_80AF2A0
sub_80AF2A0: @ 80AF2A0
	push {r4,lr}
	sub sp, 0x8
	lsls r0, 24
	ldr r4, _080AF2D8 @ =gUnknown_03004210
	ldr r1, _080AF2DC @ =gUnknown_083CA318
	lsrs r0, 23
	adds r2, r0, r1
	ldrb r2, [r2]
	adds r1, 0x1
	adds r0, r1
	ldrb r3, [r0]
	adds r0, r2, 0x7
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
	adds r0, r4, 0
	movs r1, 0
	bl FillWindowRect_DefaultPalette
	add sp, 0x8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AF2D8: .4byte gUnknown_03004210
_080AF2DC: .4byte gUnknown_083CA318
	thumb_func_end sub_80AF2A0

	thumb_func_start unref_sub_80AF2E0
unref_sub_80AF2E0: @ 80AF2E0
	push {r4,lr}
	movs r4, 0
_080AF2E4:
	adds r0, r4, 0
	bl sub_80AF2A0
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _080AF2E4
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end unref_sub_80AF2E0

	thumb_func_start sub_80AF2FC
sub_80AF2FC: @ 80AF2FC
	push {r4-r7,lr}
	sub sp, 0x8
	movs r4, 0
	ldr r2, _080AF398 @ =gSharedMem + 0x19260
_080AF304:
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	adds r0, r2
	ldrh r1, [r0, 0x2]
	ldrh r3, [r0, 0x4]
	adds r1, r3
	strh r1, [r0, 0x4]
	lsls r0, r4, 1
	add r0, sp
	strh r1, [r0]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _080AF304
	movs r4, 0
_080AF326:
	movs r2, 0x3
	cmp r2, r4
	bls _080AF354
_080AF32C:
	subs r5, r2, 0x1
	lsls r0, r5, 1
	mov r7, sp
	adds r3, r7, r0
	lsls r0, r2, 1
	adds r2, r7, r0
	ldrh r6, [r3]
	movs r0, 0
	ldrsh r1, [r3, r0]
	movs r7, 0
	ldrsh r0, [r2, r7]
	cmp r1, r0
	bge _080AF34C
	ldrh r0, [r2]
	strh r6, [r2]
	strh r0, [r3]
_080AF34C:
	lsls r0, r5, 24
	lsrs r2, r0, 24
	cmp r2, r4
	bhi _080AF32C
_080AF354:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _080AF326
	movs r4, 0
	ldr r0, _080AF398 @ =gSharedMem + 0x19260
	mov r12, r0
	movs r7, 0x4
	negs r7, r7
	movs r6, 0x3
_080AF36A:
	movs r2, 0
	lsls r0, r4, 3
	adds r5, r4, 0x1
	subs r0, r4
	lsls r0, 2
	mov r1, r12
	adds r3, r0, r1
	movs r4, 0x4
	ldrsh r1, [r3, r4]
_080AF37C:
	lsls r0, r2, 1
	add r0, sp
	movs r4, 0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bne _080AF39C
	ands r2, r6
	ldrb r1, [r3, 0xB]
	adds r0, r7, 0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, 0xB]
	b _080AF3A6
	.align 2, 0
_080AF398: .4byte gSharedMem + 0x19260
_080AF39C:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x3
	bls _080AF37C
_080AF3A6:
	lsls r0, r5, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _080AF36A
	movs r0, 0x1
	bl sub_80B0F28
	bl sub_80B159C
	add sp, 0x8
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80AF2FC

	thumb_func_start sub_80AF3C0
sub_80AF3C0: @ 80AF3C0
	push {lr}
	ldr r2, _080AF3D0 @ =gSharedMem + 0x19260
	adds r3, r2, 0
_080AF3C6:
	ldrh r0, [r2, 0x6]
	cmp r0, 0
	bne _080AF3D4
	movs r1, 0x5
	b _080AF3F2
	.align 2, 0
_080AF3D0: .4byte gSharedMem + 0x19260
_080AF3D4:
	movs r1, 0x2
	ldrsh r0, [r2, r1]
	movs r1, 0
	cmp r0, 0
	ble _080AF3F2
	movs r1, 0x1
	cmp r0, 0x1D
	ble _080AF3F2
	movs r1, 0x2
	cmp r0, 0x3B
	ble _080AF3F2
	movs r1, 0x4
	cmp r0, 0x4F
	bgt _080AF3F2
	movs r1, 0x3
_080AF3F2:
	strb r1, [r2, 0x1A]
	adds r2, 0x1C
	adds r0, r3, 0
	adds r0, 0x54
	cmp r2, r0
	ble _080AF3C6
	pop {r0}
	bx r0
	thumb_func_end sub_80AF3C0

	thumb_func_start sub_80AF404
sub_80AF404: @ 80AF404
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	ldr r0, _080AF42C @ =gSharedMem + 0x19260
	adds r2, r1, r0
	ldrb r1, [r2, 0xC]
	movs r0, 0x6
	ands r0, r1
	cmp r0, 0
	bne _080AF428
	ldrb r1, [r2, 0xB]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _080AF430
_080AF428:
	movs r0, 0
	b _080AF432
	.align 2, 0
_080AF42C: .4byte gSharedMem + 0x19260
_080AF430:
	movs r0, 0x1
_080AF432:
	pop {r1}
	bx r1
	thumb_func_end sub_80AF404

	thumb_func_start sub_80AF438
sub_80AF438: @ 80AF438
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r5, 0
	ldr r0, _080AF594 @ =gSharedMem + 0x19260
	mov r10, r0
	movs r1, 0
	mov r12, r1
	movs r0, 0x7
	negs r0, r0
	mov r9, r0
	movs r1, 0x2
	negs r1, r1
	mov r8, r1
_080AF458:
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	mov r1, r10
	adds r3, r0, r1
	movs r0, 0
	strh r0, [r3, 0x2]
	strh r0, [r3]
	mov r0, r12
	strb r0, [r3, 0x12]
	ldrb r2, [r3, 0xC]
	movs r0, 0x6
	ands r0, r2
	cmp r0, 0
	beq _080AF48A
	lsls r0, r2, 29
	lsrs r0, 30
	subs r0, 0x1
	movs r1, 0x3
	ands r0, r1
	lsls r0, 1
	mov r1, r9
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xC]
_080AF48A:
	mov r1, r12
	strb r1, [r3, 0xE]
	ldrb r0, [r3, 0x10]
	mov r1, r8
	ands r1, r0
	mov r0, r12
	strb r0, [r3, 0xF]
	movs r0, 0x3
	negs r0, r0
	ands r1, r0
	movs r6, 0x5
	negs r6, r6
	ands r1, r6
	movs r7, 0x9
	negs r7, r7
	ands r1, r7
	ldrb r0, [r3, 0xC]
	mov r4, r8
	ands r4, r0
	strb r4, [r3, 0xC]
	movs r0, 0xFF
	strb r0, [r3, 0x13]
	movs r0, 0x1
	negs r0, r0
	strb r0, [r3, 0x14]
	subs r0, 0x30
	ands r1, r0
	strb r1, [r3, 0x10]
	ldrb r2, [r3, 0x15]
	lsls r1, r2, 31
	lsrs r1, 31
	lsls r1, 2
	adds r0, r6, 0
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	ands r0, r1
	strb r0, [r3, 0x15]
	ldrb r0, [r3, 0x11]
	movs r2, 0x4
	negs r2, r2
	ands r2, r0
	movs r0, 0x21
	negs r0, r0
	ands r2, r0
	strb r2, [r3, 0x11]
	movs r0, 0x4
	ands r0, r2
	cmp r0, 0
	beq _080AF500
	adds r0, r4, 0
	mov r1, r9
	ands r0, r1
	movs r1, 0x2
	orrs r0, r1
	strb r0, [r3, 0xC]
	adds r0, r2, 0
	ands r0, r6
	strb r0, [r3, 0x11]
_080AF500:
	ldrb r2, [r3, 0x11]
	movs r0, 0x8
	ands r0, r2
	cmp r0, 0
	beq _080AF518
	ldrb r0, [r3, 0xB]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r3, 0xB]
	adds r0, r7, 0
	ands r0, r2
	strb r0, [r3, 0x11]
_080AF518:
	ldrb r0, [r3, 0x11]
	movs r1, 0x11
	negs r1, r1
	ands r1, r0
	strb r1, [r3, 0x11]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x3
	bls _080AF458
	movs r5, 0
	mov r6, r10
	mov r9, r5
	adds r7, r6, 0
	subs r7, 0x5C
	movs r0, 0x18
	negs r0, r0
	adds r0, r6
	mov r8, r0
_080AF53E:
	lsls r4, r5, 3
	subs r4, r5
	lsls r4, 2
	adds r4, r6
	ldrh r2, [r4, 0x6]
	strh r2, [r4, 0x8]
	lsls r1, r5, 1
	ldrb r0, [r7, 0x1]
	lsls r0, 3
	adds r1, r0
	adds r0, r6, 0
	subs r0, 0x40
	adds r0, r1
	strh r2, [r0]
	ldrh r0, [r4, 0x6]
	bl contest_get_move_excitement
	ldrb r1, [r7, 0x1]
	lsls r1, 2
	adds r1, r5, r1
	add r1, r8
	strb r0, [r1]
	mov r1, r9
	strh r1, [r4, 0x6]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x3
	bls _080AF53E
	ldr r2, _080AF598 @ =gSharedMem + 0x19328
	ldrb r1, [r2, 0x1]
	movs r0, 0x2
	negs r0, r0
	ands r0, r1
	strb r0, [r2, 0x1]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AF594: .4byte gSharedMem + 0x19260
_080AF598: .4byte gSharedMem + 0x19328
	thumb_func_end sub_80AF438

	thumb_func_start sub_80AF59C
sub_80AF59C: @ 80AF59C
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	ldr r0, _080AF5C4 @ =gSharedMem + 0x19260
	adds r2, r1, r0
	ldrb r1, [r2, 0xC]
	movs r0, 0x6
	ands r0, r1
	cmp r0, 0
	bne _080AF5C0
	ldrb r1, [r2, 0xB]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _080AF5C8
_080AF5C0:
	movs r0, 0x1
	b _080AF5CA
	.align 2, 0
_080AF5C4: .4byte gSharedMem + 0x19260
_080AF5C8:
	movs r0, 0
_080AF5CA:
	pop {r1}
	bx r1
	thumb_func_end sub_80AF59C

	thumb_func_start unref_sub_80AF5D0
unref_sub_80AF5D0: @ 80AF5D0
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r3, r1, 24
	ldr r1, _080AF5E8 @ =gContestPlayerMonIndex
	ldrb r1, [r1]
	cmp r0, r1
	beq _080AF600
_080AF5E2:
	movs r0, 0x1
	b _080AF626
	.align 2, 0
_080AF5E8: .4byte gContestPlayerMonIndex
_080AF5EC:
	ldrb r0, [r4, 0x6]
	movs r1, 0x1
	b _080AF5F6
_080AF5F2:
	ldrb r0, [r4, 0x6]
	movs r1, 0x2
_080AF5F6:
	orrs r0, r1
	strb r0, [r4, 0x6]
	b _080AF5E2
_080AF5FC:
	strb r3, [r2]
	b _080AF5E2
_080AF600:
	movs r0, 0
	ldr r4, _080AF62C @ =gSharedMem + 0x19204
	adds r5, r4, 0x2
_080AF606:
	cmp r3, 0x3
	beq _080AF5EC
	cmp r3, 0x4
	beq _080AF5F2
	adds r2, r0, r5
	ldrb r1, [r2]
	cmp r1, r3
	beq _080AF5E2
	cmp r1, 0xFF
	beq _080AF5FC
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x3
	bls _080AF606
	movs r0, 0
_080AF626:
	pop {r4,r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AF62C: .4byte gSharedMem + 0x19204
	thumb_func_end unref_sub_80AF5D0

	thumb_func_start sub_80AF630
sub_80AF630: @ 80AF630
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	bl sub_80AF688
	ldr r1, _080AF65C @ =gUnknown_02038688
	lsls r4, 1
	adds r1, r4, r1
	strh r0, [r1]
	ldr r2, _080AF660 @ =gUnknown_02038678
	adds r2, r4, r2
	ldr r1, _080AF664 @ =gUnknown_02038670
	adds r4, r1
	ldrh r4, [r4]
	adds r0, r4
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AF65C: .4byte gUnknown_02038688
_080AF660: .4byte gUnknown_02038678
_080AF664: .4byte gUnknown_02038670
	thumb_func_end sub_80AF630

	thumb_func_start sub_80AF668
sub_80AF668: @ 80AF668
	push {r4,lr}
	movs r4, 0
_080AF66C:
	adds r0, r4, 0
	bl sub_80AF630
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _080AF66C
	bl sub_80AF6A0
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80AF668

	thumb_func_start sub_80AF688
sub_80AF688: @ 80AF688
	lsls r0, 24
	ldr r1, _080AF69C @ =gUnknown_02038680
	lsrs r0, 23
	adds r0, r1
	movs r1, 0
	ldrsh r0, [r0, r1]
	lsls r0, 17
	asrs r0, 16
	bx lr
	.align 2, 0
_080AF69C: .4byte gUnknown_02038680
	thumb_func_end sub_80AF688

	thumb_func_start sub_80AF6A0
sub_80AF6A0: @ 80AF6A0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x70
	mov r0, sp
	movs r1, 0
	movs r2, 0x8
	bl memset
	movs r0, 0
	mov r9, r0
	mov r1, sp
	adds r1, 0x8
	str r1, [sp, 0x64]
	mov r3, sp
	adds r3, 0xC
	str r3, [sp, 0x68]
	mov r6, sp
	adds r6, 0x14
	str r6, [sp, 0x6C]
	mov r4, sp
_080AF6CE:
	bl Random
	strh r0, [r4]
	movs r2, 0
	cmp r2, r9
	bge _080AF70C
	mov r1, sp
	lsls r0, 16
	lsrs r0, 16
	ldrh r1, [r1]
	cmp r0, r1
	bne _080AF6F0
	subs r4, 0x2
	movs r7, 0x1
	negs r7, r7
	add r9, r7
	b _080AF70C
_080AF6F0:
	adds r2, 0x1
	cmp r2, r9
	bge _080AF70C
	lsls r0, r2, 1
	mov r3, sp
	adds r1, r3, r0
	ldrh r0, [r4]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080AF6F0
	subs r4, 0x2
	movs r6, 0x1
	negs r6, r6
	add r9, r6
_080AF70C:
	adds r4, 0x2
	movs r7, 0x1
	add r9, r7
	mov r0, r9
	cmp r0, 0x3
	ble _080AF6CE
	movs r1, 0
	mov r9, r1
	mov r4, sp
	ldr r6, _080AF81C @ =gUnknown_02038678
	ldr r2, [sp, 0x64]
	ldr r5, _080AF820 @ =gUnknown_02038670
	ldr r3, [sp, 0x68]
_080AF726:
	mov r7, r9
	lsls r1, r7, 4
	movs r7, 0
	ldrsh r0, [r6, r7]
	str r0, [r2]
	movs r7, 0
	ldrsh r0, [r5, r7]
	str r0, [r3]
	ldrh r0, [r4]
	str r0, [r2, 0x8]
	ldr r0, [sp, 0x6C]
	adds r1, r0, r1
	mov r7, r9
	str r7, [r1]
	adds r4, 0x2
	adds r6, 0x2
	adds r2, 0x10
	adds r5, 0x2
	adds r3, 0x10
	movs r0, 0x1
	add r9, r0
	mov r1, r9
	cmp r1, 0x3
	ble _080AF726
	movs r3, 0
	mov r9, r3
_080AF75A:
	movs r4, 0x3
	cmp r4, r9
	ble _080AF7E4
	add r7, sp, 0x48
	ldr r6, [sp, 0x68]
	str r6, [sp, 0x58]
	ldr r0, [sp, 0x64]
	adds r0, 0x8
	str r0, [sp, 0x5C]
	ldr r1, [sp, 0x6C]
	str r1, [sp, 0x60]
_080AF770:
	subs r3, r4, 0x1
	mov r10, r3
	mov r0, r10
	adds r1, r4, 0
	ldr r2, [sp, 0x64]
	bl sub_80AF828
	lsls r0, 24
	cmp r0, 0
	beq _080AF7DE
	mov r6, r10
	lsls r2, r6, 4
	ldr r0, [sp, 0x64]
	adds r3, r0, r2
	ldr r0, [r3]
	str r0, [sp, 0x48]
	ldr r1, [sp, 0x58]
	adds r6, r1, r2
	ldr r0, [r6]
	str r0, [r7, 0x4]
	ldr r0, [sp, 0x5C]
	adds r0, r2
	mov r8, r0
	ldr r0, [r0]
	str r0, [r7, 0x8]
	ldr r1, [sp, 0x60]
	adds r2, r1, r2
	ldr r0, [r2]
	str r0, [r7, 0xC]
	lsls r1, r4, 4
	ldr r0, [sp, 0x64]
	adds r5, r0, r1
	ldr r0, [r5]
	str r0, [r3]
	ldr r3, [sp, 0x58]
	adds r4, r3, r1
	ldr r0, [r4]
	str r0, [r6]
	ldr r6, [sp, 0x5C]
	adds r3, r6, r1
	ldr r0, [r3]
	mov r6, r8
	str r0, [r6]
	ldr r0, [sp, 0x60]
	adds r1, r0, r1
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, [sp, 0x48]
	str r0, [r5]
	ldr r0, [r7, 0x4]
	str r0, [r4]
	ldr r0, [r7, 0x8]
	str r0, [r3]
	ldr r0, [r7, 0xC]
	str r0, [r1]
_080AF7DE:
	mov r4, r10
	cmp r4, r9
	bgt _080AF770
_080AF7E4:
	movs r1, 0x1
	add r9, r1
	mov r3, r9
	cmp r3, 0x2
	ble _080AF75A
	movs r6, 0
	mov r9, r6
	ldr r2, _080AF824 @ =gUnknown_02038690
	ldr r1, [sp, 0x6C]
_080AF7F6:
	ldr r0, [r1]
	adds r0, r2
	mov r7, r9
	strb r7, [r0]
	adds r1, 0x10
	movs r0, 0x1
	add r9, r0
	mov r3, r9
	cmp r3, 0x3
	ble _080AF7F6
	add sp, 0x70
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AF81C: .4byte gUnknown_02038678
_080AF820: .4byte gUnknown_02038670
_080AF824: .4byte gUnknown_02038690
	thumb_func_end sub_80AF6A0

	thumb_func_start sub_80AF828
sub_80AF828: @ 80AF828
	push {lr}
	lsls r0, 4
	adds r0, r2
	lsls r1, 4
	adds r3, r1, r2
	ldr r2, [r0]
	ldr r1, [r3]
	cmp r2, r1
	blt _080AF858
	cmp r2, r1
	bgt _080AF84A
	ldr r2, [r0, 0x4]
	ldr r1, [r3, 0x4]
	cmp r2, r1
	blt _080AF858
	cmp r2, r1
	ble _080AF84E
_080AF84A:
	movs r2, 0
	b _080AF85A
_080AF84E:
	ldr r1, [r0, 0x8]
	ldr r0, [r3, 0x8]
	movs r2, 0
	cmp r1, r0
	bge _080AF85A
_080AF858:
	movs r2, 0x1
_080AF85A:
	adds r0, r2, 0
	pop {r1}
	bx r1
	thumb_func_end sub_80AF828

	thumb_func_start sub_80AF860
sub_80AF860: @ 80AF860
	push {lr}
	sub sp, 0x4
	ldr r0, _080AF88C @ =gUnknown_030042A0
	movs r1, 0
	strh r1, [r0]
	ldr r0, _080AF890 @ =gUnknown_03004280
	strh r1, [r0]
	bl sub_80AF138
	ldr r0, _080AF894 @ =gMenuWindow
	ldr r1, _080AF898 @ =gUnknownText_LinkStandbyAndWinner
	movs r2, 0xC2
	lsls r2, 2
	movs r3, 0xF
	str r3, [sp]
	movs r3, 0x1
	bl sub_8003460
	add sp, 0x4
	pop {r0}
	bx r0
	.align 2, 0
_080AF88C: .4byte gUnknown_030042A0
_080AF890: .4byte gUnknown_03004280
_080AF894: .4byte gMenuWindow
_080AF898: .4byte gUnknownText_LinkStandbyAndWinner
	thumb_func_end sub_80AF860

	thumb_func_start unref_sub_80AF89C
unref_sub_80AF89C: @ 80AF89C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	adds r4, r0, 0
	adds r6, r1, 0
	mov r8, r2
	lsls r4, 16
	lsrs r4, 16
	lsls r6, 16
	lsrs r6, 16
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r3, 24
	lsrs r3, 24
	mov r9, r3
	lsls r2, r3, 2
	ldr r0, _080AF940 @ =gSharedMem + 0x19338
	adds r2, r0
	ldrb r0, [r2, 0x2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2, 0x2]
	ldr r0, _080AF944 @ =sub_80AF94C
	movs r1, 0x14
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	adds r7, r0, 0
	lsls r4, 16
	asrs r4, 16
	adds r0, r4, 0
	bl sub_80AFB74
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 16
	asrs r6, 16
	adds r4, r6
	lsls r4, 16
	asrs r4, 16
	adds r0, r4, 0
	bl sub_80AFB74
	adds r4, r0, 0
	subs r4, r5
	lsls r4, 24
	lsrs r4, 24
	mov r0, r9
	bl sub_80AFB40
	lsls r0, 16
	lsrs r0, 16
	ldr r2, _080AF948 @ =gTasks
	lsls r1, r7, 2
	adds r1, r7
	lsls r1, 3
	adds r1, r2
	strh r5, [r1, 0x8]
	lsls r4, 24
	asrs r4, 24
	strh r4, [r1, 0xA]
	add r0, r8
	strh r0, [r1, 0xC]
	mov r0, r9
	strh r0, [r1, 0xE]
	cmp r6, 0
	bge _080AF932
	mov r0, r9
	bl nullsub_19
_080AF932:
	adds r0, r7, 0
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_080AF940: .4byte gSharedMem + 0x19338
_080AF944: .4byte sub_80AF94C
_080AF948: .4byte gTasks
	thumb_func_end unref_sub_80AF89C

	thumb_func_start sub_80AF94C
sub_80AF94C: @ 80AF94C
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, _080AF988 @ =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r2, r0, r1
	ldrb r5, [r2, 0xE]
	ldrh r3, [r2, 0xA]
	movs r0, 0xA
	ldrsh r1, [r2, r0]
	cmp r1, 0
	bne _080AF990
	adds r0, r5, 0
	bl nullsub_19
	adds r0, r4, 0
	bl DestroyTask
	lsls r1, r5, 2
	ldr r0, _080AF98C @ =gSharedMem + 0x19338
	adds r1, r0
	ldrb r2, [r1, 0x2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0x2]
	b _080AFA56
	.align 2, 0
_080AF988: .4byte gTasks
_080AF98C: .4byte gSharedMem + 0x19338
_080AF990:
	ldrh r0, [r2, 0x1C]
	adds r0, 0x1
	strh r0, [r2, 0x1C]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x1D
	ble _080AFA56
	movs r0, 0
	strh r0, [r2, 0x1C]
	cmp r1, 0
	bge _080AF9BC
	ldrh r0, [r2, 0x8]
	subs r1, r0, 0x1
	strh r1, [r2, 0x8]
	lsls r0, 24
	lsrs r6, r0, 24
	adds r0, r3, 0x1
	strh r0, [r2, 0xA]
	movs r0, 0x16
	bl PlaySE
	b _080AF9D0
_080AF9BC:
	ldrh r0, [r2, 0x8]
	adds r0, 0x1
	strh r0, [r2, 0x8]
	lsls r0, 24
	lsrs r6, r0, 24
	subs r0, r3, 0x1
	strh r0, [r2, 0xA]
	movs r0, 0x15
	bl PlaySE
_080AF9D0:
	ldr r3, _080AFA00 @ =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r2, r0, 3
	adds r0, r2, r3
	ldrh r1, [r0, 0xC]
	ldr r0, _080AFA04 @ =0x0000ffff
	cmp r1, r0
	beq _080AFA38
	adds r0, r3, r2
	adds r0, 0xC
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 5
	adds r1, 0x93
	adds r1, r6, r1
	lsls r1, 1
	ldr r2, _080AFA08 @ =0x0600c000
	adds r1, r2
	movs r2, 0x2
	bl RequestSpriteCopy
	b _080AFA56
	.align 2, 0
_080AFA00: .4byte gTasks
_080AFA04: .4byte 0x0000ffff
_080AFA08: .4byte 0x0600c000
_080AFA0C:
	adds r0, r2, r3
	lsls r1, 1
	adds r1, 0xE
	adds r0, r1
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 5
	adds r1, 0x93
	adds r1, r6, r1
	lsls r1, 1
	ldr r7, _080AFA34 @ =0x0600c000
	adds r1, r7
	movs r2, 0x2
	bl RequestSpriteCopy
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
	b _080AFA56
	.align 2, 0
_080AFA34: .4byte 0x0600c000
_080AFA38:
	movs r1, 0
	adds r3, 0x8
_080AFA3C:
	adds r0, r1, 0x4
	lsls r0, 1
	adds r0, r2
	adds r4, r0, r3
	movs r7, 0
	ldrsh r0, [r4, r7]
	cmp r0, 0
	blt _080AFA0C
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x2
	bls _080AFA3C
_080AFA56:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80AF94C

	thumb_func_start sub_80AFA5C
sub_80AFA5C: @ 80AFA5C
	push {r4-r7,lr}
	sub sp, 0x4
	movs r3, 0
	ldr r0, _080AFAAC @ =0x0600c000
	mov r12, r0
	mov r4, sp
	movs r6, 0
	ldr r2, _080AFAB0 @ =0x040000d4
	ldr r5, _080AFAB4 @ =0x81000008
_080AFA6E:
	lsls r1, r3, 2
	adds r1, r3
	lsls r1, 5
	adds r0, r1, 0
	adds r0, 0x56
	lsls r0, 1
	add r0, r12
	strh r6, [r4]
	mov r7, sp
	str r7, [r2]
	str r0, [r2, 0x4]
	str r5, [r2, 0x8]
	ldr r0, [r2, 0x8]
	adds r1, 0x76
	lsls r1, 1
	add r1, r12
	strh r6, [r4]
	str r7, [r2]
	str r1, [r2, 0x4]
	str r5, [r2, 0x8]
	ldr r0, [r2, 0x8]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x3
	bls _080AFA6E
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AFAAC: .4byte 0x0600c000
_080AFAB0: .4byte 0x040000d4
_080AFAB4: .4byte 0x81000008
	thumb_func_end sub_80AFA5C

	thumb_func_start unref_sub_80AFAB8
unref_sub_80AFAB8: @ 80AFAB8
	push {r4-r6,lr}
	sub sp, 0x14
	lsls r1, 24
	lsrs r4, r1, 24
	lsls r0, 16
	asrs r0, 16
	bl sub_80AFB74
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r2, _080AFAF4 @ =0x000050a2
	cmp r4, 0
	beq _080AFAE0
	ldr r2, _080AFAF8 @ =0x000060a2
	cmp r4, 0x1
	beq _080AFAE0
	ldr r2, _080AFAFC @ =0x000080a2
	cmp r4, 0x2
	bne _080AFAE0
	ldr r2, _080AFB00 @ =0x000070a2
_080AFAE0:
	movs r1, 0
	lsls r3, r4, 2
	movs r6, 0
_080AFAE6:
	cmp r1, r5
	bcs _080AFB04
	lsls r0, r1, 1
	add r0, sp
	strh r2, [r0]
	b _080AFB0A
	.align 2, 0
_080AFAF4: .4byte 0x000050a2
_080AFAF8: .4byte 0x000060a2
_080AFAFC: .4byte 0x000080a2
_080AFB00: .4byte 0x000070a2
_080AFB04:
	lsls r0, r1, 1
	add r0, sp
	strh r6, [r0]
_080AFB0A:
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x8
	bls _080AFAE6
	adds r0, r3, r4
	lsls r0, 6
	ldr r1, _080AFB34 @ =0x0600c128
	adds r0, r1
	ldr r1, _080AFB38 @ =0x040000d4
	mov r2, sp
	str r2, [r1]
	str r0, [r1, 0x4]
	ldr r0, _080AFB3C @ =0x80000009
	str r0, [r1, 0x8]
	ldr r0, [r1, 0x8]
	add sp, 0x14
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AFB34: .4byte 0x0600c128
_080AFB38: .4byte 0x040000d4
_080AFB3C: .4byte 0x80000009
	thumb_func_end unref_sub_80AFAB8

	thumb_func_start sub_80AFB40
sub_80AFB40: @ 80AFB40
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _080AFB64 @ =0x00005011
	cmp r0, 0
	beq _080AFB5A
	ldr r1, _080AFB68 @ =0x00006011
	cmp r0, 0x1
	beq _080AFB5A
	ldr r1, _080AFB6C @ =0x00008011
	cmp r0, 0x2
	bne _080AFB5A
	ldr r1, _080AFB70 @ =0x00007011
_080AFB5A:
	adds r0, r1, 0x1
	lsls r0, 16
	lsrs r0, 16
	pop {r1}
	bx r1
	.align 2, 0
_080AFB64: .4byte 0x00005011
_080AFB68: .4byte 0x00006011
_080AFB6C: .4byte 0x00008011
_080AFB70: .4byte 0x00007011
	thumb_func_end sub_80AFB40

	thumb_func_start sub_80AFB74
sub_80AFB74: @ 80AFB74
	push {lr}
	lsls r0, 16
	asrs r0, 16
	movs r1, 0xA
	bl __divsi3
	lsls r0, 24
	lsrs r1, r0, 24
	asrs r2, r0, 24
	cmp r2, 0x10
	ble _080AFB8E
	movs r1, 0x10
	b _080AFB98
_080AFB8E:
	movs r0, 0x10
	negs r0, r0
	cmp r2, r0
	bge _080AFB98
	movs r1, 0xF0
_080AFB98:
	lsls r0, r1, 24
	asrs r0, 24
	pop {r1}
	bx r1
	thumb_func_end sub_80AFB74

	thumb_func_start sub_80AFBA0
sub_80AFBA0: @ 80AFBA0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r5, r0, 0
	lsls r5, 16
	lsrs r5, 16
	lsls r1, 16
	lsrs r1, 16
	mov r8, r1
	lsls r2, 24
	lsrs r7, r2, 24
	lsls r2, r7, 2
	ldr r0, _080AFC30 @ =gSharedMem + 0x19338
	adds r2, r0
	ldrb r0, [r2, 0x2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2, 0x2]
	ldr r0, _080AFC34 @ =sub_80AFC74
	movs r1, 0x14
	bl CreateTask
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r5, 16
	asrs r5, 16
	adds r0, r5, 0
	bl sub_80AFB74
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	mov r1, r8
	lsls r0, r1, 16
	asrs r0, 16
	adds r5, r0
	lsls r5, 16
	asrs r5, 16
	adds r0, r5, 0
	bl sub_80AFB74
	lsls r4, 24
	asrs r4, 24
	subs r0, r4
	lsls r0, 24
	lsrs r5, r0, 24
	adds r0, r7, 0
	bl sub_80AFB40
	ldr r2, _080AFC38 @ =gTasks
	lsls r3, r6, 2
	adds r0, r3, r6
	lsls r0, 3
	adds r1, r0, r2
	adds r0, r4, 0
	cmp r4, 0
	bge _080AFC14
	negs r0, r4
_080AFC14:
	strh r0, [r1, 0x8]
	lsls r0, r5, 24
	asrs r0, 24
	strh r0, [r1, 0xA]
	cmp r4, 0
	bgt _080AFC28
	cmp r4, 0
	bne _080AFC3C
	cmp r0, 0
	ble _080AFC3C
_080AFC28:
	movs r0, 0x1
	strh r0, [r1, 0xC]
	b _080AFC4A
	.align 2, 0
_080AFC30: .4byte gSharedMem + 0x19338
_080AFC34: .4byte sub_80AFC74
_080AFC38: .4byte gTasks
_080AFC3C:
	ldr r2, _080AFC6C @ =gTasks
	lsls r3, r6, 2
	adds r0, r3, r6
	lsls r0, 3
	adds r0, r2
	ldr r1, _080AFC70 @ =0x0000ffff
	strh r1, [r0, 0xC]
_080AFC4A:
	adds r0, r3, r6
	lsls r0, 3
	adds r0, r2
	strh r7, [r0, 0xE]
	mov r1, r8
	lsls r0, r1, 16
	cmp r0, 0
	bge _080AFC60
	adds r0, r7, 0
	bl nullsub_19
_080AFC60:
	adds r0, r6, 0
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_080AFC6C: .4byte gTasks
_080AFC70: .4byte 0x0000ffff
	thumb_func_end sub_80AFBA0

	thumb_func_start sub_80AFC74
sub_80AFC74: @ 80AFC74
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	ldr r1, _080AFCD4 @ =gTasks
	lsls r0, 2
	add r0, r8
	lsls r0, 3
	adds r4, r0, r1
	ldrb r7, [r4, 0xE]
	ldrh r3, [r4, 0x8]
	ldrh r1, [r4, 0xA]
	ldrh r0, [r4, 0x1C]
	adds r0, 0x1
	strh r0, [r4, 0x1C]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0xE
	bgt _080AFCA6
	b _080AFE1C
_080AFCA6:
	movs r0, 0
	strh r0, [r4, 0x1C]
	ldrh r2, [r4, 0xA]
	movs r5, 0xA
	ldrsh r0, [r4, r5]
	cmp r0, 0
	bne _080AFCDC
	adds r0, r7, 0
	bl nullsub_19
	mov r0, r8
	bl DestroyTask
	lsls r1, r7, 2
	ldr r0, _080AFCD8 @ =gSharedMem + 0x19338
	adds r1, r0
	ldrb r2, [r1, 0x2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0x2]
	b _080AFE1C
	.align 2, 0
_080AFCD4: .4byte gTasks
_080AFCD8: .4byte gSharedMem + 0x19338
_080AFCDC:
	cmp r3, 0
	bne _080AFD28
	lsls r0, r1, 16
	mov r9, r0
	cmp r0, 0
	bge _080AFCFA
	adds r0, r7, 0
	bl sub_80AFB40
	adds r0, 0x2
	lsls r0, 16
	lsrs r6, r0, 16
	ldrh r0, [r4, 0xA]
	adds r0, 0x1
	b _080AFD08
_080AFCFA:
	adds r0, r7, 0
	bl sub_80AFB40
	lsls r0, 16
	lsrs r6, r0, 16
	ldrh r0, [r4, 0xA]
	subs r0, 0x1
_080AFD08:
	strh r0, [r4, 0xA]
	ldr r1, _080AFD24 @ =gTasks
	mov r2, r8
	lsls r0, r2, 2
	add r0, r8
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0, 0x8]
	adds r2, r1, 0x1
	strh r2, [r0, 0x8]
	lsls r1, 24
	lsrs r5, r1, 24
	b _080AFD94
	.align 2, 0
_080AFD24: .4byte gTasks
_080AFD28:
	movs r3, 0xC
	ldrsh r0, [r4, r3]
	cmp r0, 0
	bge _080AFD62
	lsls r0, r1, 16
	mov r9, r0
	cmp r0, 0
	bge _080AFD50
	ldrh r0, [r4, 0x8]
	adds r1, r0, 0x1
	strh r1, [r4, 0x8]
	lsls r0, 24
	lsrs r5, r0, 24
	adds r0, r2, 0x1
	strh r0, [r4, 0xA]
	adds r0, r7, 0
	bl sub_80AFB40
	adds r0, 0x2
	b _080AFD90
_080AFD50:
	ldrh r0, [r4, 0x8]
	subs r0, 0x1
	strh r0, [r4, 0x8]
	lsls r0, 24
	lsrs r5, r0, 24
	movs r6, 0
	subs r0, r2, 0x1
	strh r0, [r4, 0xA]
	b _080AFD94
_080AFD62:
	lsls r0, r1, 16
	mov r9, r0
	cmp r0, 0
	bge _080AFD7C
	ldrh r0, [r4, 0x8]
	subs r0, 0x1
	strh r0, [r4, 0x8]
	lsls r0, 24
	lsrs r5, r0, 24
	movs r6, 0
	adds r0, r2, 0x1
	strh r0, [r4, 0xA]
	b _080AFD94
_080AFD7C:
	ldrh r0, [r4, 0x8]
	adds r1, r0, 0x1
	strh r1, [r4, 0x8]
	lsls r0, 24
	lsrs r5, r0, 24
	subs r0, r2, 0x1
	strh r0, [r4, 0xA]
	adds r0, r7, 0
	bl sub_80AFB40
_080AFD90:
	lsls r0, 16
	lsrs r6, r0, 16
_080AFD94:
	mov r10, r5
	cmp r5, 0x7
	bls _080AFDA2
	adds r0, r5, 0
	adds r0, 0x18
	lsls r0, 24
	lsrs r5, r0, 24
_080AFDA2:
	mov r0, sp
	strh r6, [r0]
	ldr r0, _080AFDE8 @ =gUnknown_02038696
	adds r0, r7, r0
	ldrb r0, [r0]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 5
	adds r1, 0x56
	adds r1, r5, r1
	lsls r1, 1
	ldr r0, _080AFDEC @ =0x0600c000
	adds r1, r0
	ldr r2, _080AFDF0 @ =0x01000001
	mov r0, sp
	bl CpuSet
	mov r2, r9
	cmp r2, 0
	ble _080AFDFC
	movs r0, 0x60
	bl PlaySE
	ldr r4, _080AFDF4 @ =gMPlay_SE1
	adds r0, r4, 0
	bl m4aMPlayImmInit
	ldr r1, _080AFDF8 @ =0x0000ffff
	mov r3, r10
	lsls r2, r3, 24
	asrs r2, 16
	adds r0, r4, 0
	bl m4aMPlayPitchControl
	b _080AFE02
	.align 2, 0
_080AFDE8: .4byte gUnknown_02038696
_080AFDEC: .4byte 0x0600c000
_080AFDF0: .4byte 0x01000001
_080AFDF4: .4byte gMPlay_SE1
_080AFDF8: .4byte 0x0000ffff
_080AFDFC:
	movs r0, 0x16
	bl PlaySE
_080AFE02:
	cmp r5, 0
	bne _080AFE1C
	cmp r6, 0
	bne _080AFE1C
	ldr r0, _080AFE2C @ =gTasks
	mov r5, r8
	lsls r1, r5, 2
	add r1, r8
	lsls r1, 3
	adds r1, r0
	ldrh r0, [r1, 0xC]
	negs r0, r0
	strh r0, [r1, 0xC]
_080AFE1C:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AFE2C: .4byte gTasks
	thumb_func_end sub_80AFC74

	thumb_func_start sub_80AFE30
sub_80AFE30: @ 80AFE30
	push {r4,r5,lr}
	ldr r0, _080AFE64 @ =gUnknown_083CA350
	bl LoadSpriteSheet
	movs r4, 0
	ldr r5, _080AFE68 @ =gUnknown_083CA338
_080AFE3C:
	ldr r0, _080AFE6C @ =gUnknown_02038696
	adds r0, r4, r0
	ldrb r0, [r0]
	adds r0, r5
	ldrb r2, [r0]
	ldr r0, _080AFE70 @ =gSpriteTemplate_83CA3AC
	movs r1, 0xB4
	movs r3, 0x1
	bl CreateSprite
	lsls r1, r4, 2
	ldr r2, _080AFE74 @ =gSharedMem + 0x19338
	adds r1, r2
	strb r0, [r1]
	adds r4, 0x1
	cmp r4, 0x3
	ble _080AFE3C
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AFE64: .4byte gUnknown_083CA350
_080AFE68: .4byte gUnknown_083CA338
_080AFE6C: .4byte gUnknown_02038696
_080AFE70: .4byte gSpriteTemplate_83CA3AC
_080AFE74: .4byte gSharedMem + 0x19338
	thumb_func_end sub_80AFE30

	thumb_func_start sub_80AFE78
sub_80AFE78: @ 80AFE78
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r2, r6, 2
	ldr r3, _080AFEB0 @ =gSharedMem + 0x19338
	adds r2, r3
	ldrb r0, [r2, 0x2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2, 0x2]
	ldrb r7, [r2]
	lsls r0, r6, 3
	subs r0, r6
	lsls r0, 2
	subs r3, 0xD8
	adds r0, r3
	movs r1, 0x4
	ldrsh r0, [r0, r1]
	movs r1, 0xA
	bl __divsi3
	lsls r0, 17
	lsrs r5, r0, 16
	asrs r0, 16
	cmp r0, 0x38
	ble _080AFEB4
	movs r5, 0x38
	b _080AFEBA
	.align 2, 0
_080AFEB0: .4byte gSharedMem + 0x19338
_080AFEB4:
	cmp r0, 0
	bge _080AFEBA
	movs r5, 0
_080AFEBA:
	ldr r2, _080AFEEC @ =gSprites
	lsls r3, r7, 4
	adds r0, r3, r7
	lsls r0, 2
	adds r4, r0, r2
	movs r0, 0x3E
	adds r0, r4
	mov r12, r0
	ldrb r1, [r0]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	mov r1, r12
	strb r0, [r1]
	strh r6, [r4, 0x2E]
	strh r5, [r4, 0x30]
	lsls r0, r5, 16
	asrs r0, 16
	movs r5, 0x24
	ldrsh r1, [r4, r5]
	cmp r0, r1
	ble _080AFEF0
	movs r0, 0x1
	b _080AFEF2
	.align 2, 0
_080AFEEC: .4byte gSprites
_080AFEF0:
	ldr r0, _080AFF08 @ =0x0000ffff
_080AFEF2:
	strh r0, [r4, 0x32]
	adds r0, r3, r7
	lsls r0, 2
	adds r1, r2, 0
	adds r1, 0x1C
	adds r0, r1
	ldr r1, _080AFF0C @ =sub_80AFF60
	str r1, [r0]
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AFF08: .4byte 0x0000ffff
_080AFF0C: .4byte sub_80AFF60
	thumb_func_end sub_80AFE78

	thumb_func_start sub_80AFF10
sub_80AFF10: @ 80AFF10
	push {r4,lr}
	movs r4, 0
_080AFF14:
	lsls r0, r4, 24
	lsrs r0, 24
	bl sub_80AFE78
	adds r4, 0x1
	cmp r4, 0x3
	ble _080AFF14
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80AFF10

	thumb_func_start sub_80AFF28
sub_80AFF28: @ 80AFF28
	push {r4,lr}
	movs r3, 0
	ldr r2, _080AFF54 @ =gSharedMem + 0x19338
	ldrb r1, [r2, 0x2]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080AFF4C
	movs r4, 0x1
_080AFF3A:
	adds r2, 0x4
	adds r3, 0x1
	cmp r3, 0x3
	bgt _080AFF4C
	ldrb r1, [r2, 0x2]
	adds r0, r4, 0
	ands r0, r1
	cmp r0, 0
	beq _080AFF3A
_080AFF4C:
	cmp r3, 0x4
	beq _080AFF58
	movs r0, 0
	b _080AFF5A
	.align 2, 0
_080AFF54: .4byte gSharedMem + 0x19338
_080AFF58:
	movs r0, 0x1
_080AFF5A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_80AFF28

	thumb_func_start sub_80AFF60
sub_80AFF60: @ 80AFF60
	push {r4,lr}
	adds r3, r0, 0
	ldrh r2, [r3, 0x24]
	movs r0, 0x24
	ldrsh r1, [r3, r0]
	movs r4, 0x30
	ldrsh r0, [r3, r4]
	cmp r1, r0
	bne _080AFF94
	movs r0, 0x2E
	ldrsh r1, [r3, r0]
	lsls r1, 2
	ldr r0, _080AFF8C @ =gSharedMem + 0x19338
	adds r1, r0
	ldrb r2, [r1, 0x2]
	movs r0, 0x2
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0x2]
	ldr r0, _080AFF90 @ =SpriteCallbackDummy
	str r0, [r3, 0x1C]
	b _080AFF9A
	.align 2, 0
_080AFF8C: .4byte gSharedMem + 0x19338
_080AFF90: .4byte SpriteCallbackDummy
_080AFF94:
	ldrh r0, [r3, 0x32]
	adds r0, r2, r0
	strh r0, [r3, 0x24]
_080AFF9A:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80AFF60

	thumb_func_start sub_80AFFA0
sub_80AFFA0: @ 80AFFA0
	push {r4-r6,lr}
	movs r2, 0
	ldr r6, _080AFFD0 @ =gSprites
	ldr r5, _080AFFD4 @ =gUnknown_083CA338
	ldr r3, _080AFFD8 @ =gSharedMem + 0x19338
	ldr r4, _080AFFDC @ =gUnknown_02038696
_080AFFAC:
	ldrb r0, [r3]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r6
	adds r0, r2, r4
	ldrb r0, [r0]
	adds r0, r5
	ldrb r0, [r0]
	strh r0, [r1, 0x22]
	adds r3, 0x4
	adds r2, 0x1
	cmp r2, 0x3
	ble _080AFFAC
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AFFD0: .4byte gSprites
_080AFFD4: .4byte gUnknown_083CA338
_080AFFD8: .4byte gSharedMem + 0x19338
_080AFFDC: .4byte gUnknown_02038696
	thumb_func_end sub_80AFFA0

	thumb_func_start sub_80AFFE0
sub_80AFFE0: @ 80AFFE0
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	movs r3, 0
	ldr r6, _080B0008 @ =gUnknown_02038696
	ldr r4, _080B000C @ =gSprites
	ldr r2, _080B0010 @ =gSharedMem + 0x19338
_080AFFEE:
	adds r0, r3, r6
	ldrb r0, [r0]
	cmp r0, 0x1
	bls _080B0024
	cmp r5, 0
	bne _080B0014
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	movs r0, 0xB4
	b _080B0022
	.align 2, 0
_080B0008: .4byte gUnknown_02038696
_080B000C: .4byte gSprites
_080B0010: .4byte gSharedMem + 0x19338
_080B0014:
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	movs r0, 0x80
	lsls r0, 1
_080B0022:
	strh r0, [r1, 0x20]
_080B0024:
	adds r2, 0x4
	adds r3, 0x1
	cmp r3, 0x3
	ble _080AFFEE
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_80AFFE0

	thumb_func_start sub_80B0034
sub_80B0034: @ 80B0034
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, _080B00A8 @ =gUnknown_083CA3E4
	bl LoadSpritePalette
	movs r5, 0
	ldr r0, _080B00AC @ =gUnknown_083CA33C
	mov r8, r0
	ldr r7, _080B00B0 @ =gSprites
	movs r6, 0
_080B004A:
	lsls r0, r5, 3
	ldr r1, _080B00B4 @ =gUnknown_083CA3C4
	adds r0, r1
	bl LoadCompressedObjectPic
	ldr r0, _080B00B8 @ =gSpriteTemplate_83CA3F4
	adds r0, r6, r0
	ldr r1, _080B00BC @ =gUnknown_02038696
	adds r1, r5, r1
	ldrb r1, [r1]
	add r1, r8
	ldrb r2, [r1]
	movs r1, 0xCC
	movs r3, 0
	bl CreateSprite
	lsls r4, r5, 2
	ldr r1, _080B00C0 @ =gSharedMem + 0x19338
	adds r4, r1
	strb r0, [r4, 0x1]
	ldrb r1, [r4, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, _080B00C4 @ =gSubspriteTables_83CA464
	bl SetSubspriteTables
	ldrb r1, [r4, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	adds r6, 0x18
	adds r5, 0x1
	cmp r5, 0x3
	ble _080B004A
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B00A8: .4byte gUnknown_083CA3E4
_080B00AC: .4byte gUnknown_083CA33C
_080B00B0: .4byte gSprites
_080B00B4: .4byte gUnknown_083CA3C4
_080B00B8: .4byte gSpriteTemplate_83CA3F4
_080B00BC: .4byte gUnknown_02038696
_080B00C0: .4byte gSharedMem + 0x19338
_080B00C4: .4byte gSubspriteTables_83CA464
	thumb_func_end sub_80B0034

	thumb_func_start sub_80B00C8
sub_80B00C8: @ 80B00C8
	push {lr}
	ldr r0, _080B0104 @ =gUnknown_083CA46C
	bl LoadCompressedObjectPic
	ldr r0, _080B0108 @ =gUnknown_083CA474
	bl LoadSpritePalette
	ldr r0, _080B010C @ =gSpriteTemplate_83CA484
	movs r1, 0x1E
	movs r2, 0x2C
	movs r3, 0x1
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080B0110 @ =gSprites
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	adds r1, 0x3E
	ldrb r2, [r1]
	movs r3, 0x4
	orrs r2, r3
	strb r2, [r1]
	ldr r1, _080B0114 @ =gSharedMem + 0x19204
	adds r1, 0x58
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080B0104: .4byte gUnknown_083CA46C
_080B0108: .4byte gUnknown_083CA474
_080B010C: .4byte gSpriteTemplate_83CA484
_080B0110: .4byte gSprites
_080B0114: .4byte gSharedMem + 0x19204
	thumb_func_end sub_80B00C8

	thumb_func_start nullsub_18
nullsub_18: @ 80B0118
	bx lr
	thumb_func_end nullsub_18

	thumb_func_start unref_sub_80B011C
unref_sub_80B011C: @ 80B011C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, _080B0198 @ =gUnknown_083CC3AC
	bl LoadCompressedObjectPic
	movs r4, 0
	ldr r5, _080B019C @ =gUnknown_083CC3B4
_080B012C:
	lsls r0, r4, 3
	adds r0, r5
	bl LoadCompressedObjectPalette
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _080B012C
	movs r4, 0
	ldr r5, _080B01A0 @ =gUnknown_083CA330
	adds r0, r5, 0x1
	mov r8, r0
	ldr r7, _080B01A4 @ =gSprites
	ldr r6, _080B01A8 @ =gSharedMem + 0x1920D
_080B014A:
	lsls r2, r4, 1
	adds r0, r2, r4
	lsls r0, 3
	ldr r1, _080B01AC @ =gSpriteTemplate_83CC454
	adds r0, r1
	adds r1, r2, r5
	ldrb r1, [r1]
	add r2, r8
	ldrb r2, [r2]
	movs r3, 0x5
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r7
	movs r2, 0x3E
	adds r2, r1
	mov r12, r2
	ldrb r2, [r2]
	movs r3, 0x4
	orrs r2, r3
	mov r3, r12
	strb r2, [r3]
	strh r4, [r1, 0x2E]
	adds r1, r4, r6
	strb r0, [r1]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _080B014A
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0198: .4byte gUnknown_083CC3AC
_080B019C: .4byte gUnknown_083CC3B4
_080B01A0: .4byte gUnknown_083CA330
_080B01A4: .4byte gSprites
_080B01A8: .4byte gSharedMem + 0x1920D
_080B01AC: .4byte gSpriteTemplate_83CC454
	thumb_func_end unref_sub_80B011C

	thumb_func_start unref_sub_80B01B0
unref_sub_80B01B0: @ 80B01B0
	push {r4,r5,lr}
	movs r2, 0
	ldr r5, _080B01D4 @ =gSharedMem + 0x1920D
	ldr r4, _080B01D8 @ =gSprites + 0x1C
	ldr r3, _080B01DC @ =sub_80B0238
_080B01BA:
	adds r0, r2, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	str r3, [r0]
	adds r2, 0x1
	cmp r2, 0x3
	ble _080B01BA
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B01D4: .4byte gSharedMem + 0x1920D
_080B01D8: .4byte gSprites + 0x1C
_080B01DC: .4byte sub_80B0238
	thumb_func_end unref_sub_80B01B0

	thumb_func_start unref_sub_80B01E0
unref_sub_80B01E0: @ 80B01E0
	push {r4,r5,lr}
	movs r3, 0
	ldr r2, _080B0224 @ =gSprites
	ldr r4, _080B0228 @ =gSharedMem + 0x19204
	ldrb r1, [r4, 0x9]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, 0x1C
	adds r0, r2
	ldr r1, [r0]
	ldr r0, _080B022C @ =SpriteCallbackDummy
	cmp r1, r0
	bne _080B021A
	adds r5, r4, 0
	adds r5, 0x9
	adds r4, r1, 0
_080B0202:
	adds r3, 0x1
	cmp r3, 0x3
	bgt _080B021A
	adds r0, r3, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	cmp r0, r4
	beq _080B0202
_080B021A:
	cmp r3, 0x4
	beq _080B0230
	movs r0, 0
	b _080B0232
	.align 2, 0
_080B0224: .4byte gSprites
_080B0228: .4byte gSharedMem + 0x19204
_080B022C: .4byte SpriteCallbackDummy
_080B0230:
	movs r0, 0x1
_080B0232:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end unref_sub_80B01E0

	thumb_func_start sub_80B0238
sub_80B0238: @ 80B0238
	push {r4,lr}
	adds r4, r0, 0
	ldrb r1, [r4, 0x1]
	movs r0, 0x4
	negs r0, r0
	ands r0, r1
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r4, 0x1]
	adds r0, r4, 0
	bl InitSpriteAffineAnim
	adds r0, r4, 0
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _080B0268
	ldr r0, _080B0264 @ =sub_80B02A8
	b _080B0272
	.align 2, 0
_080B0264: .4byte sub_80B02A8
_080B0268:
	adds r0, r4, 0
	movs r1, 0x1
	bl StartSpriteAffineAnim
	ldr r0, _080B027C @ =sub_80B0280
_080B0272:
	str r0, [r4, 0x1C]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B027C: .4byte sub_80B0280
	thumb_func_end sub_80B0238

	thumb_func_start sub_80B0280
sub_80B0280: @ 80B0280
	push {lr}
	adds r3, r0, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _080B02A0
	adds r2, r3, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080B02A4 @ =sub_80B02A8
	str r0, [r3, 0x1C]
_080B02A0:
	pop {r0}
	bx r0
	.align 2, 0
_080B02A4: .4byte sub_80B02A8
	thumb_func_end sub_80B0280

	thumb_func_start sub_80B02A8
sub_80B02A8: @ 80B02A8
	push {r4,lr}
	adds r4, r0, 0
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	movs r0, 0x2E
	ldrsh r1, [r4, r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	ldr r1, _080B02EC @ =gSharedMem + 0x19260
	adds r0, r1
	ldrb r1, [r0, 0xB]
	lsls r1, 30
	lsrs r1, 30
	adds r0, r4, 0
	bl StartSpriteAnim
	adds r0, r4, 0
	movs r1, 0x2
	bl StartSpriteAffineAnim
	ldr r0, _080B02F0 @ =sub_80B02F4
	str r0, [r4, 0x1C]
	movs r0, 0x18
	bl PlaySE
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B02EC: .4byte gSharedMem + 0x19260
_080B02F0: .4byte sub_80B02F4
	thumb_func_end sub_80B02A8

	thumb_func_start sub_80B02F4
sub_80B02F4: @ 80B02F4
	push {r4,lr}
	adds r4, r0, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _080B0318
	adds r0, r4, 0
	bl FreeSpriteOamMatrix
	ldrb r0, [r4, 0x1]
	movs r1, 0x4
	negs r1, r1
	ands r1, r0
	strb r1, [r4, 0x1]
	ldr r0, _080B0320 @ =SpriteCallbackDummy
	str r0, [r4, 0x1C]
_080B0318:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B0320: .4byte SpriteCallbackDummy
	thumb_func_end sub_80B02F4

	thumb_func_start sub_80B0324
sub_80B0324: @ 80B0324
	push {r4,lr}
	ldr r0, _080B035C @ =sub_80B0458
	movs r1, 0x1E
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _080B0360 @ =gSharedMem + 0x19204
	strb r0, [r1, 0xD]
	movs r2, 0
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r4, _080B0364 @ =gTasks + 0x8
	movs r3, 0xFF
_080B0342:
	lsls r0, r2, 3
	adds r0, r1
	adds r0, r4
	strh r3, [r0]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x3
	bls _080B0342
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B035C: .4byte sub_80B0458
_080B0360: .4byte gSharedMem + 0x19204
_080B0364: .4byte gTasks + 0x8
	thumb_func_end sub_80B0324

	thumb_func_start sub_80B0368
sub_80B0368: @ 80B0368
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r3, _080B03A0 @ =gTasks
	ldr r5, _080B03A4 @ =gSharedMem + 0x19204
	ldrb r2, [r5, 0xD]
	lsls r1, r2, 2
	adds r1, r2
	adds r1, r0
	lsls r1, 3
	adds r3, 0x8
	adds r1, r3
	movs r4, 0
	strh r4, [r1]
	lsls r0, 2
	adds r0, 0x1
	lsls r0, 1
	ldrb r2, [r5, 0xD]
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 3
	adds r0, r1
	adds r0, r3
	strh r4, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B03A0: .4byte gTasks
_080B03A4: .4byte gSharedMem + 0x19204
	thumb_func_end sub_80B0368

	thumb_func_start sub_80B03A8
sub_80B03A8: @ 80B03A8
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, _080B03D0 @ =sub_80B03D8
	movs r1, 0x1F
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080B03D4 @ =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r4, [r1, 0x8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B03D0: .4byte sub_80B03D8
_080B03D4: .4byte gTasks
	thumb_func_end sub_80B03A8

	thumb_func_start sub_80B03D8
sub_80B03D8: @ 80B03D8
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r0, 24
	adds r5, r0, 0
	ldr r2, _080B044C @ =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x8]
	adds r4, r0, 0
	ldr r6, _080B0450 @ =gSharedMem + 0x19204
	ldrb r1, [r6, 0xD]
	lsls r0, r1, 2
	adds r0, r1
	adds r0, r4
	lsls r0, 3
	adds r7, r2, 0
	adds r7, 0x8
	adds r1, r0, r7
	movs r2, 0
	ldrsh r0, [r1, r2]
	cmp r0, 0
	beq _080B040C
	cmp r0, 0xFF
	bne _080B0444
_080B040C:
	movs r3, 0
	movs r0, 0xFF
	strh r0, [r1]
	lsls r1, r4, 2
	adds r1, 0x1
	lsls r1, 1
	ldrb r2, [r6, 0xD]
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r1, r0
	adds r1, r7
	strh r3, [r1]
	adds r0, r6, 0
	adds r0, 0x14
	adds r0, r4, r0
	ldrb r0, [r0]
	adds r0, 0x5
	lsls r0, 4
	adds r0, 0x6
	ldr r3, _080B0454 @ =0x00004bff
	movs r1, 0x2
	movs r2, 0
	bl BlendPalette
	adds r0, r5, 0
	bl DestroyTask
_080B0444:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B044C: .4byte gTasks
_080B0450: .4byte gSharedMem + 0x19204
_080B0454: .4byte 0x00004bff
	thumb_func_end sub_80B03D8

	thumb_func_start sub_80B0458
sub_80B0458: @ 80B0458
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r0, 24
	movs r6, 0
	lsls r1, r0, 2
	adds r1, r0
	mov r9, r1
	lsls r7, r1, 3
	ldr r0, _080B04A8 @ =gTasks + 0x8
	mov r8, r0
	movs r1, 0x8
	negs r1, r1
	add r1, r8
	mov r10, r1
_080B047C:
	lsls r0, r6, 26
	lsrs r3, r0, 24
	lsls r0, r3, 1
	adds r0, r7
	mov r4, r8
	adds r2, r0, r4
	ldrh r4, [r2]
	movs r5, 0
	ldrsh r0, [r2, r5]
	cmp r0, 0xFF
	beq _080B04F6
	adds r0, r3, 0x1
	lsls r1, r0, 1
	adds r1, r7
	add r1, r8
	movs r5, 0
	ldrsh r1, [r1, r5]
	adds r5, r0, 0
	cmp r1, 0
	bne _080B04AC
	adds r0, r4, 0x1
	b _080B04AE
	.align 2, 0
_080B04A8: .4byte gTasks + 0x8
_080B04AC:
	subs r0, r4, 0x1
_080B04AE:
	strh r0, [r2]
	lsls r1, r3, 1
	mov r0, r9
	lsls r2, r0, 3
	adds r0, r1, r2
	mov r3, r10
	adds r3, 0x8
	adds r0, r3
	movs r4, 0
	ldrsh r0, [r0, r4]
	adds r4, r1, 0
	cmp r0, 0x10
	beq _080B04CC
	cmp r0, 0
	bne _080B04DA
_080B04CC:
	lsls r0, r5, 1
	adds r0, r2
	adds r0, r3
	ldrh r1, [r0]
	movs r2, 0x1
	eors r1, r2
	strh r1, [r0]
_080B04DA:
	ldr r0, _080B0510 @ =gSharedMem + 0x19204
	adds r0, 0x14
	adds r0, r6, r0
	ldrb r0, [r0]
	adds r0, 0x5
	lsls r0, 4
	adds r0, 0x6
	adds r1, r4, r7
	add r1, r8
	ldrb r2, [r1]
	movs r1, 0x2
	ldr r3, _080B0514 @ =0x00004bff
	bl BlendPalette
_080B04F6:
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x3
	bls _080B047C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0510: .4byte gSharedMem + 0x19204
_080B0514: .4byte 0x00004bff
	thumb_func_end sub_80B0458

	thumb_func_start sub_80B0518
sub_80B0518: @ 80B0518
	push {r4,lr}
	ldr r0, _080B0540 @ =sub_80B05FC
	movs r1, 0x1E
	bl CreateTask
	ldr r1, _080B0544 @ =gSharedMem + 0x19204
	strb r0, [r1, 0xE]
	movs r4, 0
_080B0528:
	adds r0, r4, 0
	bl sub_80B0548
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _080B0528
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B0540: .4byte sub_80B05FC
_080B0544: .4byte gSharedMem + 0x19204
	thumb_func_end sub_80B0518

	thumb_func_start sub_80B0548
sub_80B0548: @ 80B0548
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r3, _080B0580 @ =gTasks
	ldr r4, _080B0584 @ =gSharedMem + 0x19204
	ldrb r2, [r4, 0xE]
	lsls r1, r2, 2
	adds r1, r2
	adds r1, r0
	lsls r1, 3
	adds r3, 0x8
	adds r1, r3
	movs r5, 0
	movs r2, 0xFF
	strh r2, [r1]
	lsls r0, 2
	adds r0, 0x1
	lsls r0, 1
	ldrb r2, [r4, 0xE]
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 3
	adds r0, r1
	adds r0, r3
	strh r5, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B0580: .4byte gTasks
_080B0584: .4byte gSharedMem + 0x19204
	thumb_func_end sub_80B0548

	thumb_func_start sub_80B0588
sub_80B0588: @ 80B0588
	push {r4,lr}
	movs r4, 0
_080B058C:
	adds r0, r4, 0
	bl sub_80B05A4
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _080B058C
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80B0588

	thumb_func_start sub_80B05A4
sub_80B05A4: @ 80B05A4
	push {r4-r6,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	bl sub_80B0548
	adds r0, r4, 0x5
	lsls r2, r0, 5
	ldr r3, _080B05E8 @ =gPlttBufferUnfaded + 0x14
	adds r6, r2, r3
	ldr r5, _080B05EC @ =gPlttBufferFaded + 0x14
	adds r2, r5
	ldr r1, _080B05F0 @ =0x040000d4
	str r6, [r1]
	str r2, [r1, 0x4]
	ldr r2, _080B05F4 @ =0x80000001
	str r2, [r1, 0x8]
	ldr r6, [r1, 0x8]
	lsls r0, 4
	adds r4, 0xC
	adds r0, r4
	lsls r0, 1
	subs r3, 0x14
	adds r3, r0, r3
	subs r5, 0x14
	adds r0, r5
	str r3, [r1]
	str r0, [r1, 0x4]
	str r2, [r1, 0x8]
	ldr r0, [r1, 0x8]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B05E8: .4byte gPlttBufferUnfaded + 0x14
_080B05EC: .4byte gPlttBufferFaded + 0x14
_080B05F0: .4byte 0x040000d4
_080B05F4: .4byte 0x80000001
	thumb_func_end sub_80B05A4

	thumb_func_start nullsub_19
nullsub_19: @ 80B05F8
	bx lr
	thumb_func_end nullsub_19

	thumb_func_start sub_80B05FC
sub_80B05FC: @ 80B05FC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r0, 24
	movs r7, 0
	lsls r1, r0, 2
	adds r1, r0
	mov r9, r1
	lsls r6, r1, 3
	ldr r0, _080B0664 @ =gTasks + 0x8
	mov r8, r0
	ldr r1, _080B0668 @ =0x00004bff
	mov r10, r1
_080B061C:
	lsls r0, r7, 26
	lsrs r3, r0, 24
	lsls r0, r3, 1
	adds r0, r6
	mov r4, r8
	adds r2, r0, r4
	movs r5, 0
	ldrsh r0, [r2, r5]
	cmp r0, 0xFF
	beq _080B06C2
	adds r0, r3, 0x2
	lsls r0, 1
	adds r0, r6
	adds r1, r0, r4
	ldrh r0, [r1]
	adds r0, 0x1
	movs r4, 0
	strh r0, [r1]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x2
	ble _080B06C2
	strh r4, [r1]
	adds r0, r3, 0x1
	lsls r1, r0, 1
	adds r1, r6
	add r1, r8
	movs r4, 0
	ldrsh r1, [r1, r4]
	adds r4, r0, 0
	cmp r1, 0
	bne _080B066C
	ldrh r0, [r2]
	adds r0, 0x1
	b _080B0670
	.align 2, 0
_080B0664: .4byte gTasks + 0x8
_080B0668: .4byte 0x00004bff
_080B066C:
	ldrh r0, [r2]
	subs r0, 0x1
_080B0670:
	strh r0, [r2]
	lsls r1, r3, 1
	mov r5, r9
	lsls r2, r5, 3
	adds r0, r1, r2
	ldr r3, _080B06DC @ =gTasks
	adds r3, 0x8
	adds r0, r3
	movs r5, 0
	ldrsh r0, [r0, r5]
	adds r5, r1, 0
	cmp r0, 0x10
	beq _080B068E
	cmp r0, 0
	bne _080B069C
_080B068E:
	lsls r0, r4, 1
	adds r0, r2
	adds r0, r3
	ldrh r1, [r0]
	movs r2, 0x1
	eors r1, r2
	strh r1, [r0]
_080B069C:
	adds r4, r7, 0x5
	lsls r4, 4
	adds r0, r4, 0
	adds r0, 0xA
	adds r5, r6
	add r5, r8
	ldrb r2, [r5]
	movs r1, 0x1
	mov r3, r10
	bl BlendPalette
	adds r4, 0xC
	adds r4, r7
	ldrb r2, [r5]
	adds r0, r4, 0
	movs r1, 0x1
	mov r3, r10
	bl BlendPalette
_080B06C2:
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	cmp r7, 0x3
	bls _080B061C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B06DC: .4byte gTasks
	thumb_func_end sub_80B05FC

	thumb_func_start unref_sub_80B06E0
unref_sub_80B06E0: @ 80B06E0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r7, r0, 0
	ldr r0, _080B073C @ =sub_80B0748
	movs r1, 0xA
	bl CreateTask
	lsls r0, 24
	lsrs r5, r0, 24
	movs r3, 0
	lsls r0, r5, 2
	adds r0, r5
	lsls r6, r0, 3
	ldr r0, _080B0740 @ =gTasks + 0x8
	mov r8, r0
	ldr r1, _080B0744 @ =gSharedMem + 0x19338
	mov r12, r1
_080B0704:
	lsls r4, r3, 2
	lsls r0, r3, 26
	lsrs r0, 23
	adds r0, r6
	add r0, r8
	adds r2, r7, r3
	ldrb r1, [r2]
	strh r1, [r0]
	ldrb r0, [r2]
	cmp r0, 0
	beq _080B0726
	mov r1, r12
	adds r0, r4, r1
	ldrb r1, [r0, 0x2]
	movs r2, 0x2
	orrs r1, r2
	strb r1, [r0, 0x2]
_080B0726:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x3
	bls _080B0704
	adds r0, r5, 0
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B073C: .4byte sub_80B0748
_080B0740: .4byte gTasks + 0x8
_080B0744: .4byte gSharedMem + 0x19338
	thumb_func_end unref_sub_80B06E0

	thumb_func_start sub_80B0748
sub_80B0748: @ 80B0748
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	ldr r2, _080B07F4 @ =gTasks
	movs r1, 0x8
	adds r1, r2
	mov r10, r1
	ldr r3, [sp]
	lsls r3, 2
	str r3, [sp, 0x1C]
	ldr r1, [sp]
	adds r0, r3, r1
	lsls r0, 3
	str r0, [sp, 0xC]
_080B0774:
	ldr r0, _080B07F8 @ =gUnknown_02038696
	ldr r3, [sp, 0x4]
	adds r0, r3, r0
	ldrb r4, [r0]
	lsls r0, r4, 26
	lsrs r1, r0, 24
	lsls r0, r1, 1
	str r0, [sp, 0x8]
	ldr r3, [sp]
	lsls r0, r3, 2
	adds r0, r3
	lsls r6, r0, 3
	ldr r3, [sp, 0x8]
	adds r0, r3, r6
	add r0, r10
	mov r9, r0
	ldrb r7, [r0]
	cmp r7, 0
	bne _080B079C
	b _080B0910
_080B079C:
	adds r3, r1, 0x1
	lsls r0, r3, 1
	adds r0, r6
	add r0, r10
	ldrb r0, [r0]
	mov r8, r0
	adds r2, r1, 0x2
	lsls r0, r2, 1
	adds r0, r6
	add r0, r10
	ldrb r5, [r0]
	adds r1, 0x3
	lsls r0, r1, 1
	adds r0, r6
	add r0, r10
	ldrb r6, [r0]
	str r3, [sp, 0x10]
	str r2, [sp, 0x14]
	str r1, [sp, 0x18]
	cmp r7, 0x1
	bne _080B0818
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x1
	beq _080B07D2
	b _080B08EA
_080B07D2:
	movs r6, 0
	adds r0, r4, 0x5
	lsls r0, 4
	adds r0, 0x1
	movs r1, 0x3
	adds r2, r5, 0
	ldr r3, _080B07FC @ =0x00007fff
	bl BlendPalette
	cmp r5, 0
	bne _080B0800
	mov r0, r8
	cmp r0, 0x4
	bne _080B0800
	mov r1, r9
	strh r6, [r1]
	b _080B08EA
	.align 2, 0
_080B07F4: .4byte gTasks
_080B07F8: .4byte gUnknown_02038696
_080B07FC: .4byte 0x00007fff
_080B0800:
	adds r0, r5, 0x2
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0xD
	bls _080B08EA
	movs r5, 0
	mov r0, r8
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	b _080B08EA
_080B0818:
	cmp r7, 0x2
	beq _080B0820
	cmp r7, 0x4
	bne _080B0896
_080B0820:
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x3
	bne _080B08EA
	movs r6, 0
	adds r0, r4, 0x5
	lsls r0, 4
	adds r0, 0x1
	ldr r2, _080B0854 @ =gUnknown_083CC5A4
	lsls r1, r4, 1
	adds r1, r2
	ldrh r3, [r1]
	movs r1, 0x3
	adds r2, r5, 0
	bl BlendPalette
	cmp r5, 0
	bne _080B0858
	mov r2, r8
	cmp r2, 0x2
	bne _080B0858
	mov r3, r9
	strh r6, [r3]
	b _080B08EA
	.align 2, 0
_080B0854: .4byte gUnknown_083CC5A4
_080B0858:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0xE
	bne _080B08EA
	movs r5, 0
	mov r0, r8
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	cmp r7, 0x4
	bne _080B08EA
	cmp r0, 0x1
	bne _080B08EA
	adds r4, 0x9
	lsls r4, 4
	adds r0, r4, 0x2
	movs r1, 0x1
	movs r2, 0x4
	movs r3, 0
	bl BlendPalette
	adds r4, 0x5
	adds r0, r4, 0
	movs r1, 0x1
	movs r2, 0x4
	movs r3, 0
	bl BlendPalette
	b _080B08EA
_080B0896:
	cmp r7, 0x3
	bne _080B08EA
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0xC
	bne _080B08EA
	movs r6, 0
	adds r0, r4, 0x5
	lsls r0, 4
	adds r4, r0, 0x1
	adds r0, r4, 0
	movs r1, 0x3
	adds r2, r5, 0
	movs r3, 0
	bl BlendPalette
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x5
	bne _080B08EA
	ldr r0, _080B0930 @ =gPlttBufferFaded
	lsls r1, r4, 1
	adds r0, r1, r0
	ldrh r2, [r0]
	ldr r0, _080B0934 @ =gPlttBufferUnfaded
	adds r1, r0
	ldrh r0, [r1]
	ldr r1, _080B0938 @ =0x040000d4
	str r2, [r1]
	str r0, [r1, 0x4]
	movs r0, 0x80
	lsls r0, 24
	orrs r7, r0
	str r7, [r1, 0x8]
	ldr r0, [r1, 0x8]
	ldr r1, [sp, 0x8]
	ldr r2, [sp, 0xC]
	adds r0, r1, r2
	add r0, r10
	strh r6, [r0]
_080B08EA:
	ldr r3, [sp, 0x10]
	lsls r0, r3, 1
	ldr r1, [sp, 0xC]
	adds r0, r1
	add r0, r10
	mov r2, r8
	strh r2, [r0]
	ldr r3, [sp, 0x14]
	lsls r0, r3, 1
	adds r0, r1
	add r0, r10
	strh r5, [r0]
	ldr r1, [sp, 0x18]
	lsls r0, r1, 1
	ldr r2, [sp, 0xC]
	adds r0, r2
	add r0, r10
	strh r6, [r0]
	ldr r2, _080B093C @ =gTasks
_080B0910:
	ldr r0, [sp, 0x4]
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
	cmp r0, 0x3
	bhi _080B0920
	b _080B0774
_080B0920:
	movs r4, 0
	ldr r3, [sp, 0x1C]
	ldr r1, [sp]
	adds r0, r3, r1
	lsls r1, r0, 3
	adds r2, 0x8
	adds r0, r1, r2
	b _080B0950
	.align 2, 0
_080B0930: .4byte gPlttBufferFaded
_080B0934: .4byte gPlttBufferUnfaded
_080B0938: .4byte 0x040000d4
_080B093C: .4byte gTasks
_080B0940:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bhi _080B0958
	lsls r0, r4, 3
	adds r0, r1
	adds r0, r2
_080B0950:
	movs r3, 0
	ldrsh r0, [r0, r3]
	cmp r0, 0
	beq _080B0940
_080B0958:
	cmp r4, 0x4
	bne _080B0980
	movs r4, 0
	ldr r3, _080B0990 @ =gSharedMem + 0x19338
	movs r5, 0x3
	negs r5, r5
_080B0964:
	lsls r1, r4, 2
	adds r1, r3
	ldrb r2, [r1, 0x2]
	adds r0, r5, 0
	ands r0, r2
	strb r0, [r1, 0x2]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _080B0964
	ldr r0, [sp]
	bl DestroyTask
_080B0980:
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0990: .4byte gSharedMem + 0x19338
	thumb_func_end sub_80B0748

	thumb_func_start unref_sub_80B0994
unref_sub_80B0994: @ 80B0994
	push {lr}
	lsls r0, 24
	cmp r0, 0
	beq _080B09A6
	ldr r0, _080B09AC @ =gSharedMem + 0x19204
	ldrb r1, [r0, 0x6]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0, 0x6]
_080B09A6:
	pop {r0}
	bx r0
	.align 2, 0
_080B09AC: .4byte gSharedMem + 0x19204
	thumb_func_end unref_sub_80B0994

	thumb_func_start sub_80B09B0
sub_80B09B0: @ 80B09B0
	push {lr}
	lsls r0, 24
	lsrs r2, r0, 24
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	ldr r1, _080B09D4 @ =gSharedMem + 0x19260
	adds r0, r1
	ldrb r1, [r0, 0x15]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _080B09D8
	adds r0, r2, 0
	bl sub_80B0368
	b _080B09DE
	.align 2, 0
_080B09D4: .4byte gSharedMem + 0x19260
_080B09D8:
	adds r0, r2, 0
	bl sub_80B03A8
_080B09DE:
	pop {r0}
	bx r0
	thumb_func_end sub_80B09B0

	thumb_func_start sub_80B09E4
sub_80B09E4: @ 80B09E4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	mov r9, r0
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	ldr r0, _080B0B2C @ =gUnknown_02038696
	mov r1, r9
	adds r7, r1, r0
	ldrb r0, [r7]
	lsls r5, r0, 2
	adds r5, r0
	lsls r5, 27
	movs r2, 0x80
	lsls r2, 22
	adds r5, r2
	lsrs r5, 24
	lsls r4, r1, 3
	ldr r0, _080B0B30 @ =gUnknown_083CC4B4
	adds r0, r4, r0
	bl LoadCompressedObjectPic
	ldr r0, _080B0B34 @ =gUnknown_083CC4D4
	adds r4, r0
	adds r0, r4, 0
	bl LoadSpritePalette
	mov r3, r9
	lsls r4, r3, 1
	add r4, r9
	lsls r4, 3
	ldr r0, _080B0B38 @ =gSpriteTemplate_83CC53C
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0xB8
	adds r2, r5, 0
	movs r3, 0x1D
	bl CreateSprite
	mov r8, r0
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	adds r0, r4, 0
	movs r1, 0xF8
	adds r2, r5, 0
	movs r3, 0x1D
	bl CreateSprite
	adds r6, r0, 0
	lsls r6, 24
	lsrs r6, 24
	ldr r1, _080B0B3C @ =gSprites
	mov r10, r1
	lsls r5, r6, 4
	adds r5, r6
	lsls r5, 2
	add r5, r10
	ldrh r2, [r5, 0x4]
	lsls r1, r2, 22
	lsrs r1, 22
	adds r1, 0x40
	ldr r3, _080B0B40 @ =0x000003ff
	adds r0, r3, 0
	ands r1, r0
	ldr r0, _080B0B44 @ =0xfffffc00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, 0x4]
	ldrb r0, [r7]
	lsls r3, r0, 2
	adds r3, r0
	lsls r3, 6
	ldr r0, _080B0B48 @ =0x0600e026
	adds r3, r0
	mov r1, r8
	lsls r4, r1, 4
	add r4, r8
	lsls r4, 2
	add r4, r10
	ldrh r0, [r4, 0x4]
	lsls r0, 22
	lsrs r0, 17
	ldr r2, _080B0B4C @ =0x06010000
	mov r10, r2
	add r0, r10
	str r0, [sp]
	movs r0, 0
	movs r1, 0x3
	movs r2, 0xC0
	lsls r2, 19
	bl CopySpriteTiles
	ldrb r0, [r7]
	lsls r3, r0, 2
	adds r3, r0
	lsls r3, 6
	ldr r7, _080B0B50 @ =0x0600e036
	adds r3, r7
	ldrh r0, [r5, 0x4]
	lsls r0, 22
	lsrs r0, 17
	add r0, r10
	str r0, [sp]
	movs r0, 0
	movs r1, 0x3
	movs r2, 0xC0
	lsls r2, 19
	bl CopySpriteTiles
	ldrh r0, [r4, 0x4]
	lsls r0, 22
	lsrs r0, 17
	movs r1, 0xA0
	lsls r1, 3
	adds r0, r1
	add r0, r10
	movs r2, 0
	str r2, [sp, 0x8]
	ldr r1, _080B0B54 @ =0x040000d4
	add r3, sp, 0x8
	mov r12, r3
	str r3, [r1]
	str r0, [r1, 0x4]
	ldr r3, _080B0B58 @ =0x850000c0
	str r3, [r1, 0x8]
	ldr r0, [r1, 0x8]
	add r0, sp, 0x4
	strb r2, [r0]
	strb r2, [r0]
	ldrh r0, [r5, 0x4]
	lsls r0, 22
	lsrs r0, 17
	movs r7, 0xA0
	lsls r7, 3
	adds r0, r7
	add r0, r10
	str r2, [sp, 0x8]
	mov r2, r12
	str r2, [r1]
	str r0, [r1, 0x4]
	str r3, [r1, 0x8]
	ldr r0, [r1, 0x8]
	strh r6, [r4, 0x2E]
	mov r3, r8
	strh r3, [r5, 0x2E]
	mov r7, r9
	strh r7, [r4, 0x30]
	mov r0, r9
	strh r0, [r5, 0x30]
	mov r0, r8
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B0B2C: .4byte gUnknown_02038696
_080B0B30: .4byte gUnknown_083CC4B4
_080B0B34: .4byte gUnknown_083CC4D4
_080B0B38: .4byte gSpriteTemplate_83CC53C
_080B0B3C: .4byte gSprites
_080B0B40: .4byte 0x000003ff
_080B0B44: .4byte 0xfffffc00
_080B0B48: .4byte 0x0600e026
_080B0B4C: .4byte 0x06010000
_080B0B50: .4byte 0x0600e036
_080B0B54: .4byte 0x040000d4
_080B0B58: .4byte 0x850000c0
	thumb_func_end sub_80B09E4

	thumb_func_start sub_80B0B5C
sub_80B0B5C: @ 80B0B5C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _080B0B94 @ =gSprites
	lsls r5, r0, 4
	adds r5, r0
	lsls r5, 2
	adds r5, r1
	ldrh r0, [r5, 0x2E]
	lsls r0, 24
	lsrs r0, 24
	lsls r4, r0, 4
	adds r4, r0
	lsls r4, 2
	adds r4, r1
	adds r0, r4, 0
	bl FreeSpriteOamMatrix
	adds r0, r4, 0
	bl DestroySprite
	adds r0, r5, 0
	bl DestroySpriteAndFreeResources
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B0B94: .4byte gSprites
	thumb_func_end sub_80B0B5C

	thumb_func_start sub_80B0B98
sub_80B0B98: @ 80B0B98
	ldr r1, _080B0BAC @ =REG_BLDCNT
	movs r2, 0xFD
	lsls r2, 6
	adds r0, r2, 0
	strh r0, [r1]
	adds r1, 0x2
	ldr r2, _080B0BB0 @ =0x00000907
	adds r0, r2, 0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080B0BAC: .4byte REG_BLDCNT
_080B0BB0: .4byte 0x00000907
	thumb_func_end sub_80B0B98

	thumb_func_start sub_80B0BB4
sub_80B0BB4: @ 80B0BB4
	ldr r0, _080B0BC0 @ =REG_BLDCNT
	movs r1, 0
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	bx lr
	.align 2, 0
_080B0BC0: .4byte REG_BLDCNT
	thumb_func_end sub_80B0BB4

	thumb_func_start sub_80B0BC4
sub_80B0BC4: @ 80B0BC4
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	adds r4, r0, 0
	mov r9, r1
	lsls r4, 24
	lsrs r4, 24
	mov r0, r9
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	bl sub_80B0B98
	ldr r1, _080B0C38 @ =gSprites
	mov r8, r1
	lsls r6, r4, 4
	adds r6, r4
	lsls r6, 2
	adds r0, r6, r1
	movs r1, 0x30
	ldrsh r2, [r0, r1]
	lsls r2, 2
	ldr r1, _080B0C3C @ =gSharedMem + 0x19338
	adds r2, r1
	ldrb r1, [r2, 0x2]
	movs r3, 0x2
	orrs r1, r3
	strb r1, [r2, 0x2]
	ldrh r5, [r0, 0x2E]
	lsls r5, 24
	lsrs r5, 24
	movs r1, 0x1
	bl StartSpriteAffineAnim
	lsls r4, r5, 4
	adds r4, r5
	lsls r4, 2
	mov r1, r8
	adds r0, r4, r1
	movs r1, 0x1
	bl StartSpriteAffineAnim
	movs r0, 0x1C
	add r8, r0
	add r6, r8
	ldr r0, _080B0C40 @ =sub_80B0C5C
	str r0, [r6]
	add r4, r8
	ldr r0, _080B0C44 @ =SpriteCallbackDummy
	str r0, [r4]
	mov r1, r9
	cmp r1, 0
	bne _080B0C48
	movs r0, 0x65
	bl PlaySE
	b _080B0C4E
	.align 2, 0
_080B0C38: .4byte gSprites
_080B0C3C: .4byte gSharedMem + 0x19338
_080B0C40: .4byte sub_80B0C5C
_080B0C44: .4byte SpriteCallbackDummy
_080B0C48:
	movs r0, 0x2
	bl PlaySE
_080B0C4E:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_80B0BC4

	thumb_func_start sub_80B0C5C
sub_80B0C5C: @ 80B0C5C
	push {lr}
	mov r12, r0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _080B0CA4
	mov r0, r12
	ldrh r1, [r0, 0x2E]
	lsls r1, 24
	lsrs r1, 24
	ldr r2, _080B0CA8 @ =gSprites
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r0, r2
	adds r0, r1, 0
	adds r0, 0x3F
	ldrb r0, [r0]
	lsls r0, 26
	cmp r0, 0
	bge _080B0CA4
	mov r3, r12
	adds r3, 0x3E
	ldrb r0, [r3]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r3]
	adds r1, 0x3E
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _080B0CAC @ =sub_80B0CB0
	mov r1, r12
	str r0, [r1, 0x1C]
_080B0CA4:
	pop {r0}
	bx r0
	.align 2, 0
_080B0CA8: .4byte gSprites
_080B0CAC: .4byte sub_80B0CB0
	thumb_func_end sub_80B0C5C

	thumb_func_start sub_80B0CB0
sub_80B0CB0: @ 80B0CB0
	push {lr}
	movs r1, 0x30
	ldrsh r2, [r0, r1]
	lsls r2, 2
	ldr r1, _080B0CD8 @ =gSharedMem + 0x19338
	adds r2, r1
	ldrb r3, [r2, 0x2]
	movs r1, 0x3
	negs r1, r1
	ands r1, r3
	strb r1, [r2, 0x2]
	ldrh r0, [r0, 0x2E]
	lsls r0, 24
	lsrs r0, 24
	bl sub_80B0B5C
	bl sub_80B0BB4
	pop {r0}
	bx r0
	.align 2, 0
_080B0CD8: .4byte gSharedMem + 0x19338
	thumb_func_end sub_80B0CB0

	thumb_func_start sub_80B0CDC
sub_80B0CDC: @ 80B0CDC
	lsls r0, 24
	lsrs r0, 22
	ldr r1, _080B0CF0 @ =gSharedMem + 0x19338
	adds r0, r1
	ldrb r2, [r0, 0x2]
	movs r1, 0x3
	negs r1, r1
	ands r1, r2
	strb r1, [r0, 0x2]
	bx lr
	.align 2, 0
_080B0CF0: .4byte gSharedMem + 0x19338
	thumb_func_end sub_80B0CDC

	thumb_func_start unref_sub_80B0CF4
unref_sub_80B0CF4: @ 80B0CF4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x8
	ldr r0, _080B0D5C @ =gSharedMem
	movs r1, 0xC0
	lsls r1, 9
	adds r0, r1
	ldrb r1, [r0]
	movs r2, 0x1
	eors r1, r2
	strb r1, [r0]
	cmp r1, 0
	bne _080B0D6C
	movs r4, 0
	ldr r6, _080B0D60 @ =gUnknown_083CA308
	adds r3, r6, 0x1
	mov r8, r3
	ldr r5, _080B0D64 @ =gUnknown_083CA310
	adds r7, r5, 0x1
_080B0D1C:
	lsls r1, r4, 1
	adds r0, r1, r6
	ldrb r2, [r0]
	mov r3, r8
	adds r0, r1, r3
	ldrb r3, [r0]
	adds r0, r1, r5
	ldrb r0, [r0]
	adds r0, 0x5
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	adds r1, r7
	ldrb r0, [r1]
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
	ldr r0, _080B0D68 @ =gUnknown_03004210
	movs r1, 0
	bl FillWindowRect_DefaultPalette
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _080B0D1C
	bl sub_80AE514
	bl sub_80AEB30
	b _080B0D70
	.align 2, 0
_080B0D5C: .4byte gSharedMem
_080B0D60: .4byte gUnknown_083CA308
_080B0D64: .4byte gUnknown_083CA310
_080B0D68: .4byte gUnknown_03004210
_080B0D6C:
	bl sub_80B0D7C
_080B0D70:
	add sp, 0x8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end unref_sub_80B0CF4

	thumb_func_start sub_80B0D7C
sub_80B0D7C: @ 80B0D7C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x10
	movs r5, 0
	ldr r0, _080B0ED0 @ =gSharedMem
	movs r1, 0xC0
	lsls r1, 9
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _080B0D98
	b _080B0EC2
_080B0D98:
	movs r4, 0
	ldr r7, _080B0ED4 @ =gUnknown_083CA308
	adds r3, r7, 0x1
	mov r9, r3
	ldr r6, _080B0ED8 @ =gUnknown_083CA310
	adds r0, r6, 0x1
	mov r8, r0
_080B0DA6:
	lsls r1, r4, 1
	adds r0, r1, r7
	ldrb r2, [r0]
	mov r3, r9
	adds r0, r1, r3
	ldrb r3, [r0]
	adds r0, r1, r6
	ldrb r0, [r0]
	adds r0, 0x5
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	add r1, r8
	ldrb r0, [r1]
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
	ldr r0, _080B0EDC @ =gUnknown_03004210
	movs r1, 0
	bl FillWindowRect_DefaultPalette
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _080B0DA6
	movs r4, 0
	ldr r6, _080B0ED8 @ =gUnknown_083CA310
	adds r7, r6, 0x1
_080B0DE2:
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	ldr r1, _080B0EE0 @ =gSharedMem + 0x19260
	adds r0, r1
	ldrh r2, [r0, 0x4]
	movs r1, 0x4
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bge _080B0E08
	negs r0, r0
	lsls r0, 16
	lsrs r2, r0, 16
	add r1, sp, 0x8
	movs r0, 0xAE
	strb r0, [r1]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
_080B0E08:
	mov r0, sp
	adds r0, r5
	adds r0, 0x8
	lsls r1, r2, 16
	asrs r1, 16
	movs r2, 0
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r0, _080B0EE4 @ =gUnknown_02038696
	adds r0, r4, r0
	ldrb r0, [r0]
	movs r1, 0x16
	adds r2, r0, 0
	muls r2, r1
	movs r3, 0x94
	lsls r3, 2
	adds r2, r3
	lsls r0, 1
	adds r1, r0, r6
	ldrb r3, [r1]
	adds r0, r7
	ldrb r0, [r0]
	str r0, [sp]
	ldr r0, _080B0EDC @ =gUnknown_03004210
	add r1, sp, 0x8
	bl sub_8003460
	movs r5, 0
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _080B0DE2
	movs r4, 0
	ldr r6, _080B0ED4 @ =gUnknown_083CA308
	adds r7, r6, 0x1
_080B0E52:
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	ldr r1, _080B0EE0 @ =gSharedMem + 0x19260
	adds r0, r1
	ldrh r2, [r0, 0x2]
	movs r1, 0x2
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bge _080B0E78
	negs r0, r0
	lsls r0, 16
	lsrs r2, r0, 16
	add r1, sp, 0x8
	movs r0, 0xAE
	strb r0, [r1]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
_080B0E78:
	mov r0, sp
	adds r0, r5
	adds r0, 0x8
	lsls r1, r2, 16
	asrs r1, 16
	movs r2, 0
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r0, _080B0EE4 @ =gUnknown_02038696
	adds r0, r4, r0
	ldrb r1, [r0]
	lsls r2, r1, 2
	adds r2, r1
	lsls r2, 18
	movs r3, 0x80
	lsls r3, 18
	adds r2, r3
	lsrs r2, 16
	lsls r1, 1
	adds r0, r1, r6
	ldrb r3, [r0]
	adds r1, r7
	ldrb r0, [r1]
	str r0, [sp]
	ldr r0, _080B0EDC @ =gUnknown_03004210
	add r1, sp, 0x8
	bl sub_8003460
	movs r5, 0
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _080B0E52
	bl sub_80AEB30
_080B0EC2:
	add sp, 0x10
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0ED0: .4byte gSharedMem
_080B0ED4: .4byte gUnknown_083CA308
_080B0ED8: .4byte gUnknown_083CA310
_080B0EDC: .4byte gUnknown_03004210
_080B0EE0: .4byte gSharedMem + 0x19260
_080B0EE4: .4byte gUnknown_02038696
	thumb_func_end sub_80B0D7C

	thumb_func_start unref_sub_80B0EE8
unref_sub_80B0EE8: @ 80B0EE8
	push {r4-r7,lr}
	adds r7, r0, 0
	movs r4, 0
	subs r0, r1, 0x1
	cmp r4, r0
	bge _080B0F20
	adds r6, r0, 0
_080B0EF6:
	adds r3, r0, 0
	adds r5, r4, 0x1
	cmp r0, r4
	ble _080B0F18
	lsls r0, 2
	subs r0, 0x4
	adds r0, r7
_080B0F04:
	ldr r1, [r0]
	ldr r2, [r0, 0x4]
	cmp r1, r2
	ble _080B0F10
	str r1, [r0, 0x4]
	str r2, [r0]
_080B0F10:
	subs r0, 0x4
	subs r3, 0x1
	cmp r3, r4
	bgt _080B0F04
_080B0F18:
	adds r4, r5, 0
	adds r0, r6, 0
	cmp r4, r0
	blt _080B0EF6
_080B0F20:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end unref_sub_80B0EE8

	thumb_func_start sub_80B0F28
sub_80B0F28: @ 80B0F28
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	add r4, sp, 0x4
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0x8
	bl memset
	movs r5, 0
	add r4, sp, 0x4
	adds r6, r4, 0
	movs r7, 0
_080B0F4E:
	bl Random
	adds r1, r0, 0
	mov r0, sp
	adds r0, r7
	adds r0, 0x4
	strh r1, [r0]
	movs r2, 0
	cmp r2, r5
	bge _080B0F86
	lsls r0, r1, 16
	lsrs r0, 16
	mov r1, sp
	ldrh r1, [r1, 0x4]
	cmp r0, r1
	beq _080B0F80
_080B0F6E:
	adds r2, 0x1
	cmp r2, r5
	bge _080B0F86
	lsls r0, r2, 1
	adds r0, r4, r0
	ldrh r1, [r6]
	ldrh r0, [r0]
	cmp r1, r0
	bne _080B0F6E
_080B0F80:
	subs r6, 0x2
	subs r7, 0x2
	subs r5, 0x1
_080B0F86:
	adds r6, 0x2
	adds r7, 0x2
	adds r5, 0x1
	cmp r5, 0x3
	ble _080B0F4E
	mov r2, r8
	cmp r2, 0
	bne _080B1050
	movs r5, 0
	ldr r3, _080B1008 @ =gUnknown_02038696
	mov r8, r3
_080B0F9C:
	mov r6, r8
	strb r5, [r6]
	movs r4, 0
	cmp r4, r5
	bge _080B1018
	ldr r7, _080B100C @ =gUnknown_02038670
	mov r9, r7
	lsls r0, r5, 1
	adds r1, r0, 0
	add r1, r9
	mov r12, r1
	mov r2, sp
	adds r2, 0x4
	str r2, [sp, 0xC]
	add r0, sp
	adds r0, 0x4
	str r0, [sp, 0x10]
	ldr r3, _080B1008 @ =gUnknown_02038696
	adds r6, r3, 0
	mov r10, r6
_080B0FC4:
	ldrb r0, [r3]
	lsls r2, r0, 1
	mov r7, r9
	adds r0, r2, r7
	movs r6, 0
	ldrsh r1, [r0, r6]
	mov r7, r12
	movs r6, 0
	ldrsh r0, [r7, r6]
	cmp r1, r0
	blt _080B0FEC
	cmp r1, r0
	bne _080B1010
	ldr r7, [sp, 0xC]
	adds r0, r7, r2
	ldrh r0, [r0]
	ldr r1, [sp, 0x10]
	ldrh r1, [r1]
	cmp r0, r1
	bcs _080B1010
_080B0FEC:
	adds r2, r5, 0
	cmp r5, r4
	ble _080B1004
	subs r0, r5, 0x1
	mov r6, r10
	adds r1, r0, r6
_080B0FF8:
	ldrb r0, [r1]
	strb r0, [r1, 0x1]
	subs r1, 0x1
	subs r2, 0x1
	cmp r2, r4
	bgt _080B0FF8
_080B1004:
	strb r5, [r3]
	b _080B1018
	.align 2, 0
_080B1008: .4byte gUnknown_02038696
_080B100C: .4byte gUnknown_02038670
_080B1010:
	adds r3, 0x1
	adds r4, 0x1
	cmp r4, r5
	blt _080B0FC4
_080B1018:
	cmp r4, r5
	bne _080B1020
	mov r7, r8
	strb r5, [r7]
_080B1020:
	movs r0, 0x1
	add r8, r0
	adds r5, 0x1
	cmp r5, 0x3
	ble _080B0F9C
	ldr r4, _080B104C @ =gUnknown_02038696
	mov r0, sp
	adds r1, r4, 0
	movs r2, 0x4
	bl memcpy
	movs r5, 0
_080B1038:
	mov r1, sp
	adds r0, r1, r5
	ldrb r0, [r0]
	adds r0, r4
	strb r5, [r0]
	adds r5, 0x1
	cmp r5, 0x3
	ble _080B1038
	b _080B10FC
	.align 2, 0
_080B104C: .4byte gUnknown_02038696
_080B1050:
	mov r0, sp
	movs r1, 0xFF
	movs r2, 0x4
	bl memset
	movs r5, 0
	ldr r3, _080B1070 @ =gUnknown_02038696
	movs r6, 0
_080B1060:
	ldr r0, _080B1074 @ =gSharedMem + 0x19260
	adds r0, r6, r0
	ldrb r0, [r0, 0xB]
	lsls r0, 30
	lsrs r2, r0, 30
	mov r7, sp
	adds r1, r7, r2
	b _080B1082
	.align 2, 0
_080B1070: .4byte gUnknown_02038696
_080B1074: .4byte gSharedMem + 0x19260
_080B1078:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	mov r0, sp
	adds r1, r0, r2
_080B1082:
	ldrb r0, [r1]
	cmp r0, 0xFF
	bne _080B1078
	strb r5, [r1]
	strb r2, [r3]
	adds r3, 0x1
	adds r6, 0x1C
	adds r5, 0x1
	cmp r5, 0x3
	ble _080B1060
	movs r5, 0
_080B1098:
	movs r4, 0x3
	adds r1, r5, 0x1
	mov r10, r1
	cmp r4, r5
	ble _080B10F6
	mov r9, r4
	ldr r2, _080B110C @ =gUnknown_02038696
	mov r8, r2
	add r3, sp, 0x4
	mov r12, r3
_080B10AC:
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	ldr r6, _080B1110 @ =gSharedMem + 0x19244
	adds r1, r0, r6
	ldrb r2, [r1, 0xB]
	ldr r7, _080B1114 @ =gSharedMem + 0x19260
	adds r0, r7
	ldrb r3, [r0, 0xB]
	mov r1, r9
	ands r1, r2
	mov r0, r9
	ands r0, r3
	subs r3, r4, 0x1
	cmp r1, r0
	bne _080B10F0
	mov r0, r8
	adds r7, r3, r0
	adds r2, r4, r0
	ldrb r6, [r7]
	ldrb r1, [r2]
	cmp r6, r1
	bcs _080B10F0
	lsls r0, r3, 1
	add r0, r12
	lsls r1, r4, 1
	add r1, r12
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bcs _080B10F0
	ldrb r0, [r2]
	strb r6, [r2]
	strb r0, [r7]
_080B10F0:
	adds r4, r3, 0
	cmp r4, r5
	bgt _080B10AC
_080B10F6:
	mov r5, r10
	cmp r5, 0x2
	ble _080B1098
_080B10FC:
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B110C: .4byte gUnknown_02038696
_080B1110: .4byte gSharedMem + 0x19244
_080B1114: .4byte gSharedMem + 0x19260
	thumb_func_end sub_80B0F28

	thumb_func_start sub_80B1118
sub_80B1118: @ 80B1118
	push {r4,r5,lr}
	movs r4, 0
	movs r5, 0xA0
_080B111E:
	ldr r0, _080B1144 @ =gSharedMem + 0x18004
	adds r0, r5, r0
	ldr r1, _080B1148 @ =gUnknown_02038696
	adds r1, r4, r1
	ldrb r1, [r1]
	adds r1, 0x5
	lsls r1, 4
	movs r2, 0x20
	bl LoadPalette
	adds r5, 0x20
	adds r4, 0x1
	cmp r4, 0x3
	ble _080B111E
	bl sub_80AE514
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B1144: .4byte gSharedMem + 0x18004
_080B1148: .4byte gUnknown_02038696
	thumb_func_end sub_80B1118

	thumb_func_start sub_80B114C
sub_80B114C: @ 80B114C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r7, r6, 3
	subs r0, r7, r6
	lsls r0, 2
	ldr r4, _080B11B8 @ =gSharedMem + 0x19260
	adds r5, r0, r4
	movs r0, 0
	strh r0, [r5, 0x2]
	strh r0, [r5]
	adds r0, r6, 0
	bl sub_80AF404
	lsls r0, 24
	mov r8, r4
	cmp r0, 0
	bne _080B1176
	b _080B13DC
_080B1176:
	ldrh r0, [r5, 0x6]
	ldr r1, _080B11BC @ =gContestMoves
	lsls r0, 3
	adds r0, r1
	ldrb r1, [r0]
	mov r12, r1
	ldrb r0, [r0, 0x1]
	lsls r0, 29
	lsrs r0, 29
	strb r0, [r5, 0xA]
	ldrh r0, [r5, 0x6]
	ldrh r1, [r5, 0x8]
	cmp r0, r1
	bne _080B11C0
	cmp r0, 0
	beq _080B11C0
	ldrb r0, [r5, 0x15]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r5, 0x15]
	ldrb r2, [r5, 0xB]
	lsls r1, r2, 25
	lsrs r1, 29
	adds r1, 0x1
	movs r0, 0x7
	ands r1, r0
	lsls r1, 4
	movs r0, 0x71
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, 0xB]
	b _080B11D8
	.align 2, 0
_080B11B8: .4byte gSharedMem + 0x19260
_080B11BC: .4byte gContestMoves
_080B11C0:
	lsls r4, r6, 3
	subs r1, r4, r6
	lsls r1, 2
	ldr r3, _080B1264 @ =gSharedMem + 0x19260
	adds r1, r3
	ldrb r2, [r1, 0xB]
	movs r0, 0x71
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0xB]
	adds r7, r4, 0
	mov r8, r3
_080B11D8:
	subs r0, r7, r6
	lsls r0, 2
	add r0, r8
	ldr r2, _080B1268 @ =gContestEffects
	mov r1, r12
	lsls r3, r1, 2
	adds r2, r3, r2
	ldrb r1, [r2, 0x1]
	strh r1, [r0]
	strh r1, [r0, 0x2]
	mov r0, r8
	adds r0, 0x70
	ldrb r1, [r2, 0x2]
	strh r1, [r0, 0x4]
	strh r1, [r0, 0x6]
	strb r6, [r0, 0x11]
	movs r2, 0
	adds r4, r3, 0
	movs r1, 0
	mov r5, r8
	adds r5, 0x7D
	mov r3, r8
_080B1204:
	strb r1, [r3, 0xE]
	adds r0, r5, r2
	strb r1, [r0]
	adds r3, 0x1C
	adds r2, 0x1
	cmp r2, 0x3
	ble _080B1204
	subs r0, r7, r6
	lsls r0, 2
	ldr r1, _080B1264 @ =gSharedMem + 0x19260
	adds r5, r0, r1
	ldrb r1, [r5, 0x15]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _080B123C
	ldrh r0, [r5, 0x8]
	ldrh r1, [r5, 0x6]
	bl AreMovesContestCombo
	lsls r0, 24
	cmp r0, 0
	bne _080B123C
	ldrb r1, [r5, 0x15]
	movs r0, 0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r5, 0x15]
_080B123C:
	ldr r0, _080B126C @ =gContestEffectFuncs
	adds r0, r4, r0
	ldr r0, [r0]
	bl _call_via_r0
	subs r0, r7, r6
	lsls r0, 2
	ldr r1, _080B1264 @ =gSharedMem + 0x19260
	adds r2, r0, r1
	ldrb r1, [r2, 0x10]
	movs r0, 0x30
	ands r0, r1
	cmp r0, 0x10
	bne _080B1270
	ldrh r1, [r2, 0x2]
	subs r1, 0xA
	movs r0, 0xD
	ldrsb r0, [r2, r0]
	b _080B128A
	.align 2, 0
_080B1264: .4byte gSharedMem + 0x19260
_080B1268: .4byte gContestEffects
_080B126C: .4byte gContestEffectFuncs
_080B1270:
	ldrb r1, [r2, 0x11]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _080B1284
	movs r1, 0xD
	ldrsb r1, [r2, r1]
	lsls r0, r1, 1
	adds r0, r1
	b _080B1288
_080B1284:
	movs r0, 0xD
	ldrsb r0, [r2, r0]
_080B1288:
	ldrh r1, [r2, 0x2]
_080B128A:
	adds r0, r1
	strh r0, [r2, 0x2]
	subs r0, r7, r6
	lsls r0, 2
	ldr r1, _080B12E8 @ =gSharedMem + 0x19260
	adds r4, r0, r1
	movs r0, 0
	strb r0, [r4, 0x16]
	ldrb r1, [r4, 0x15]
	subs r0, 0x41
	ands r0, r1
	strb r0, [r4, 0x15]
	adds r0, r6, 0
	bl sub_80B214C
	lsls r0, 24
	cmp r0, 0
	beq _080B1322
	ldrh r0, [r4, 0x8]
	ldrh r1, [r4, 0x6]
	bl AreMovesContestCombo
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0
	beq _080B12EC
	ldrb r1, [r4, 0x15]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _080B12EC
	strb r2, [r4, 0x16]
	movs r0, 0x40
	orrs r1, r0
	movs r0, 0x11
	negs r0, r0
	ands r1, r0
	movs r0, 0
	ldrsh r2, [r4, r0]
	ldrb r0, [r4, 0x16]
	muls r0, r2
	strb r0, [r4, 0x17]
	movs r0, 0x8
	orrs r1, r0
	strb r1, [r4, 0x15]
	b _080B1322
	.align 2, 0
_080B12E8: .4byte gSharedMem + 0x19260
_080B12EC:
	ldr r2, _080B1310 @ =gContestMoves
	subs r0, r7, r6
	lsls r0, 2
	ldr r1, _080B1314 @ =gSharedMem + 0x19260
	adds r3, r0, r1
	ldrh r0, [r3, 0x6]
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x2]
	cmp r0, 0
	beq _080B1318
	ldrb r0, [r3, 0x15]
	movs r1, 0x10
	orrs r0, r1
	movs r1, 0x40
	orrs r0, r1
	b _080B1320
	.align 2, 0
_080B1310: .4byte gContestMoves
_080B1314: .4byte gSharedMem + 0x19260
_080B1318:
	ldrb r1, [r3, 0x15]
	movs r0, 0x11
	negs r0, r0
	ands r0, r1
_080B1320:
	strb r0, [r3, 0x15]
_080B1322:
	subs r0, r7, r6
	lsls r0, 2
	ldr r1, _080B139C @ =gSharedMem + 0x19260
	mov r8, r1
	adds r4, r0, r1
	ldrb r1, [r4, 0x15]
	movs r5, 0x1
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0
	beq _080B1348
	ldrb r0, [r4, 0xB]
	lsls r0, 25
	lsrs r0, 29
	adds r0, 0x1
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 1
	strb r1, [r4, 0x18]
_080B1348:
	ldrb r1, [r4, 0xC]
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0
	beq _080B1362
	ldrb r0, [r4, 0x15]
	movs r1, 0x11
	negs r1, r1
	ands r1, r0
	strb r1, [r4, 0x15]
	movs r0, 0
	strh r0, [r4, 0x2]
	strh r0, [r4]
_080B1362:
	ldrh r0, [r4, 0x6]
	bl contest_get_move_excitement
	mov r2, r8
	adds r2, 0xC8
	strb r0, [r2]
	ldrb r1, [r4, 0x11]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _080B137A
	strb r5, [r2]
_080B137A:
	movs r0, 0
	ldrsb r0, [r2, r0]
	cmp r0, 0
	ble _080B13A4
	mov r0, r8
	subs r0, 0x5C
	ldrb r0, [r0, 0x13]
	lsls r0, 24
	asrs r0, 24
	movs r1, 0
	ldrsb r1, [r2, r1]
	adds r0, r1
	cmp r0, 0x4
	ble _080B13A0
	movs r0, 0x3C
	b _080B13A6
	.align 2, 0
_080B139C: .4byte gSharedMem + 0x19260
_080B13A0:
	movs r0, 0xA
	b _080B13A6
_080B13A4:
	movs r0, 0
_080B13A6:
	strb r0, [r2, 0x2]
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 24
	lsrs r0, 24
	movs r2, 0
	b _080B13CA
_080B13BE:
	subs r0, 0x1
	lsls r0, 24
	lsrs r0, 24
_080B13C4:
	adds r2, 0x1
	cmp r2, 0x3
	bgt _080B13D2
_080B13CA:
	cmp r2, r6
	beq _080B13C4
	cmp r0, 0
	bne _080B13BE
_080B13D2:
	subs r0, r7, r6
	lsls r0, 2
	ldr r1, _080B13E8 @ =gSharedMem + 0x19260
	adds r0, r1
	strb r2, [r0, 0x1B]
_080B13DC:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B13E8: .4byte gSharedMem + 0x19260
	thumb_func_end sub_80B114C

	thumb_func_start sub_80B13EC
sub_80B13EC: @ 80B13EC
	lsls r0, 24
	lsrs r0, 24
	lsls r2, r0, 3
	subs r2, r0
	lsls r2, 2
	ldr r0, _080B1400 @ =gSharedMem + 0x19260
	adds r2, r0
	strb r1, [r2, 0x13]
	bx lr
	.align 2, 0
_080B1400: .4byte gSharedMem + 0x19260
	thumb_func_end sub_80B13EC

	thumb_func_start sub_80B1404
sub_80B1404: @ 80B1404
	lsls r0, 24
	lsrs r0, 24
	lsls r2, r0, 3
	subs r2, r0
	lsls r2, 2
	ldr r0, _080B1418 @ =gSharedMem + 0x19260
	adds r2, r0
	strb r1, [r2, 0x14]
	bx lr
	.align 2, 0
_080B1418: .4byte gSharedMem + 0x19260
	thumb_func_end sub_80B1404

	thumb_func_start sub_80B141C
sub_80B141C: @ 80B141C
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	adds r3, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r2, r1, 0
	cmp r1, 0x3B
	bls _080B1436
	movs r1, 0x35
	bl sub_80B13EC
	b _080B1466
_080B1436:
	cmp r1, 0x27
	bls _080B1442
	movs r1, 0x34
	bl sub_80B13EC
	b _080B1466
_080B1442:
	cmp r1, 0x1D
	bls _080B144E
	movs r1, 0x33
	bl sub_80B13EC
	b _080B1466
_080B144E:
	cmp r1, 0x13
	bls _080B145A
	movs r1, 0x32
	bl sub_80B13EC
	b _080B1466
_080B145A:
	cmp r2, 0x9
	bls _080B1466
	adds r0, r3, 0
	movs r1, 0x31
	bl sub_80B13EC
_080B1466:
	pop {r0}
	bx r0
	thumb_func_end sub_80B141C

	thumb_func_start sub_80B146C
sub_80B146C: @ 80B146C
	push {r4,r5,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r1, 24
	lsrs r5, r1, 24
	ldr r0, _080B14C8 @ =gStringVar1
	lsls r1, r4, 6
	ldr r2, _080B14CC @ =gContestMons + 0x2
	adds r1, r2
	bl StringCopy
	ldr r0, _080B14D0 @ =gStringVar2
	lsls r1, r4, 3
	subs r1, r4
	lsls r1, 2
	ldr r4, _080B14D4 @ =gSharedMem + 0x19260
	adds r1, r4
	ldrh r2, [r1, 0x6]
	movs r1, 0xD
	muls r1, r2
	ldr r2, _080B14D8 @ =gMoveNames
	adds r1, r2
	bl StringCopy
	ldr r2, _080B14DC @ =gContestMoves
	adds r0, r4, 0
	adds r0, 0x70
	ldrb r1, [r0, 0x11]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r4
	ldrh r0, [r0, 0x6]
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x1]
	lsls r1, r0, 29
	cmp r1, 0
	bne _080B14E8
	ldr r0, _080B14E0 @ =gStringVar3
	ldr r1, _080B14E4 @ =gUnknown_083CC280
	bl StringCopy
	b _080B1538
	.align 2, 0
_080B14C8: .4byte gStringVar1
_080B14CC: .4byte gContestMons + 0x2
_080B14D0: .4byte gStringVar2
_080B14D4: .4byte gSharedMem + 0x19260
_080B14D8: .4byte gMoveNames
_080B14DC: .4byte gContestMoves
_080B14E0: .4byte gStringVar3
_080B14E4: .4byte gUnknown_083CC280
_080B14E8:
	lsrs r0, r1, 29
	cmp r0, 0x1
	bne _080B1500
	ldr r0, _080B14F8 @ =gStringVar3
	ldr r1, _080B14FC @ =gUnknown_083CC288
	bl StringCopy
	b _080B1538
	.align 2, 0
_080B14F8: .4byte gStringVar3
_080B14FC: .4byte gUnknown_083CC288
_080B1500:
	lsrs r0, r1, 29
	cmp r0, 0x2
	bne _080B1518
	ldr r0, _080B1510 @ =gStringVar3
	ldr r1, _080B1514 @ =gUnknown_083CC290
	bl StringCopy
	b _080B1538
	.align 2, 0
_080B1510: .4byte gStringVar3
_080B1514: .4byte gUnknown_083CC290
_080B1518:
	lsrs r0, r1, 29
	cmp r0, 0x3
	bne _080B1530
	ldr r0, _080B1528 @ =gStringVar3
	ldr r1, _080B152C @ =gUnknown_083CC299
	bl StringCopy
	b _080B1538
	.align 2, 0
_080B1528: .4byte gStringVar3
_080B152C: .4byte gUnknown_083CC299
_080B1530:
	ldr r0, _080B1568 @ =gStringVar3
	ldr r1, _080B156C @ =gUnknown_083CC2A3
	bl StringCopy
_080B1538:
	ldr r4, _080B1570 @ =gStringVar4
	ldr r1, _080B1574 @ =gUnknown_083CC188
	lsls r0, r5, 2
	adds r0, r1
	ldr r1, [r0]
	adds r0, r4, 0
	bl StringExpandPlaceholders
	bl sub_80AF138
	ldr r0, _080B1578 @ =gMenuWindow
	movs r2, 0xC2
	lsls r2, 2
	movs r1, 0xF
	str r1, [sp]
	adds r1, r4, 0
	movs r3, 0x1
	bl sub_8002EB0
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B1568: .4byte gStringVar3
_080B156C: .4byte gUnknown_083CC2A3
_080B1570: .4byte gStringVar4
_080B1574: .4byte gUnknown_083CC188
_080B1578: .4byte gMenuWindow
	thumb_func_end sub_80B146C

	thumb_func_start sub_80B157C
sub_80B157C: @ 80B157C
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	ldr r0, _080B1598 @ =gSharedMem + 0x19260
	adds r1, r0
	ldrb r0, [r1, 0xC]
	movs r2, 0x1
	orrs r0, r2
	strb r0, [r1, 0xC]
	movs r0, 0
	strh r0, [r1, 0x6]
	bx lr
	.align 2, 0
_080B1598: .4byte gSharedMem + 0x19260
	thumb_func_end sub_80B157C

	thumb_func_start sub_80B159C
sub_80B159C: @ 80B159C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x8
	movs r0, 0
	mov r12, r0
	movs r4, 0
	ldr r1, _080B1600 @ =gUnknown_02038696
	mov r9, r1
	add r2, sp, 0x4
	mov r6, r9
	movs r5, 0
	adds r3, r2, 0
_080B15B8:
	mov r0, sp
	adds r1, r0, r4
	adds r0, r4, r6
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, r4
	strb r5, [r0]
	adds r4, 0x1
	cmp r4, 0x3
	ble _080B15B8
	movs r4, 0
	ldr r7, _080B1604 @ =gSharedMem + 0x19260
	adds r5, r2, 0
	movs r1, 0x1
	mov r8, r1
_080B15D6:
	movs r2, 0
	adds r1, r7, 0
_080B15DA:
	ldrb r0, [r1, 0x19]
	cmp r0, r4
	beq _080B1608
	adds r1, 0x1C
	adds r2, 0x1
	cmp r2, 0x3
	ble _080B15DA
_080B15E8:
	cmp r2, 0x4
	bne _080B1680
	movs r2, 0
	ldrb r0, [r5]
	cmp r0, 0
	bne _080B1616
	ldrb r0, [r7, 0x19]
	cmp r0, 0xFF
	bne _080B1616
	mov r12, r2
	movs r2, 0x1
	b _080B163A
	.align 2, 0
_080B1600: .4byte gUnknown_02038696
_080B1604: .4byte gSharedMem + 0x19260
_080B1608:
	mov r1, sp
	adds r0, r1, r2
	strb r4, [r0]
	adds r0, r5, r2
	mov r1, r8
	strb r1, [r0]
	b _080B15E8
_080B1616:
	adds r2, 0x1
	cmp r2, 0x3
	bgt _080B1672
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _080B1616
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r7
	ldrb r0, [r0, 0x19]
	cmp r0, 0xFF
	bne _080B1616
	lsls r0, r2, 24
	lsrs r0, 24
	mov r12, r0
	adds r2, 0x1
_080B163A:
	cmp r2, 0x3
	bgt _080B1672
	ldr r6, _080B16C8 @ =gUnknown_02038696
	lsls r0, r2, 3
	subs r0, r2
	lsls r3, r0, 2
_080B1646:
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _080B166A
	adds r0, r3, r7
	ldrb r0, [r0, 0x19]
	cmp r0, 0xFF
	bne _080B166A
	mov r1, r12
	adds r0, r1, r6
	adds r1, r2, r6
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bls _080B166A
	lsls r0, r2, 24
	lsrs r0, 24
	mov r12, r0
_080B166A:
	adds r3, 0x1C
	adds r2, 0x1
	cmp r2, 0x3
	ble _080B1646
_080B1672:
	mov r0, sp
	add r0, r12
	strb r4, [r0]
	mov r1, r12
	adds r0, r5, r1
	mov r1, r8
	strb r1, [r0]
_080B1680:
	adds r4, 0x1
	cmp r4, 0x3
	ble _080B15D6
	movs r4, 0
	ldr r5, _080B16CC @ =gSharedMem + 0x192D0
	adds r3, r5, 0
	subs r3, 0x60
	movs r6, 0xFF
	movs r7, 0x3F
_080B1692:
	adds r1, r4, r5
	mov r0, sp
	adds r2, r0, r4
	ldrb r0, [r2]
	strb r0, [r1]
	ldrb r0, [r3, 0x9]
	orrs r0, r6
	strb r0, [r3, 0x9]
	ldrb r1, [r3]
	adds r0, r7, 0
	ands r0, r1
	strb r0, [r3]
	mov r0, r9
	adds r1, r4, r0
	ldrb r0, [r2]
	strb r0, [r1]
	adds r3, 0x1C
	adds r4, 0x1
	cmp r4, 0x3
	ble _080B1692
	add sp, 0x8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B16C8: .4byte gUnknown_02038696
_080B16CC: .4byte gSharedMem + 0x192D0
	thumb_func_end sub_80B159C

	thumb_func_start sub_80B16D0
sub_80B16D0: @ 80B16D0
	push {lr}
	adds r2, r0, 0
	ldrh r0, [r2, 0x30]
	adds r1, r0, 0x1
	strh r1, [r2, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x54
	ble _080B1702
	movs r0, 0
	strh r0, [r2, 0x30]
	adds r3, r2, 0
	adds r3, 0x3E
	ldrb r0, [r3]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _080B1708 @ =SpriteCallbackDummy
	str r0, [r2, 0x1C]
	ldr r2, _080B170C @ =gSharedMem + 0x19204
	ldrb r1, [r2, 0x6]
	movs r0, 0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, 0x6]
_080B1702:
	pop {r0}
	bx r0
	.align 2, 0
_080B1708: .4byte SpriteCallbackDummy
_080B170C: .4byte gSharedMem + 0x19204
	thumb_func_end sub_80B16D0

	thumb_func_start sub_80B1710
sub_80B1710: @ 80B1710
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r0, _080B172C @ =gSharedMem + 0x19204
	ldrb r5, [r0, 0x12]
	cmp r1, 0x8
	bls _080B1720
	b _080B18C0
_080B1720:
	lsls r0, r1, 2
	ldr r1, _080B1730 @ =_080B1734
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B172C: .4byte gSharedMem + 0x19204
_080B1730: .4byte _080B1734
	.align 2, 0
_080B1734:
	.4byte _080B1758
	.4byte _080B1758
	.4byte _080B1788
	.4byte _080B17BC
	.4byte _080B17F0
	.4byte _080B1824
	.4byte _080B1858
	.4byte _080B18C0
	.4byte _080B188C
_080B1758:
	ldr r0, _080B177C @ =gSprites
	lsls r4, r5, 4
	adds r1, r4, r5
	lsls r1, 2
	adds r1, r0
	ldrh r0, [r1, 0x2E]
	ldr r2, _080B1780 @ =0x000003ff
	ands r2, r0
	ldrh r3, [r1, 0x4]
	ldr r0, _080B1784 @ =0xfffffc00
	ands r0, r3
	orrs r0, r2
	strh r0, [r1, 0x4]
	movs r0, 0x20
	bl PlaySE
	b _080B18E4
	.align 2, 0
_080B177C: .4byte gSprites
_080B1780: .4byte 0x000003ff
_080B1784: .4byte 0xfffffc00
_080B1788:
	ldr r0, _080B17B0 @ =gSprites
	lsls r4, r5, 4
	adds r1, r4, r5
	lsls r1, 2
	adds r1, r0
	ldrh r2, [r1, 0x2E]
	adds r2, 0x4
	ldr r3, _080B17B4 @ =0x000003ff
	adds r0, r3, 0
	ands r2, r0
	ldrh r3, [r1, 0x4]
	ldr r0, _080B17B8 @ =0xfffffc00
	ands r0, r3
	orrs r0, r2
	strh r0, [r1, 0x4]
	movs r0, 0x1F
	bl PlaySE
	b _080B18E4
	.align 2, 0
_080B17B0: .4byte gSprites
_080B17B4: .4byte 0x000003ff
_080B17B8: .4byte 0xfffffc00
_080B17BC:
	ldr r0, _080B17E4 @ =gSprites
	lsls r4, r5, 4
	adds r1, r4, r5
	lsls r1, 2
	adds r1, r0
	ldrh r2, [r1, 0x2E]
	adds r2, 0x8
	ldr r3, _080B17E8 @ =0x000003ff
	adds r0, r3, 0
	ands r2, r0
	ldrh r3, [r1, 0x4]
	ldr r0, _080B17EC @ =0xfffffc00
	ands r0, r3
	orrs r0, r2
	strh r0, [r1, 0x4]
	movs r0, 0x1F
	bl PlaySE
	b _080B18E4
	.align 2, 0
_080B17E4: .4byte gSprites
_080B17E8: .4byte 0x000003ff
_080B17EC: .4byte 0xfffffc00
_080B17F0:
	ldr r0, _080B1818 @ =gSprites
	lsls r4, r5, 4
	adds r1, r4, r5
	lsls r1, 2
	adds r1, r0
	ldrh r2, [r1, 0x2E]
	adds r2, 0xC
	ldr r3, _080B181C @ =0x000003ff
	adds r0, r3, 0
	ands r2, r0
	ldrh r3, [r1, 0x4]
	ldr r0, _080B1820 @ =0xfffffc00
	ands r0, r3
	orrs r0, r2
	strh r0, [r1, 0x4]
	movs r0, 0x2D
	bl PlaySE
	b _080B18E4
	.align 2, 0
_080B1818: .4byte gSprites
_080B181C: .4byte 0x000003ff
_080B1820: .4byte 0xfffffc00
_080B1824:
	ldr r0, _080B184C @ =gSprites
	lsls r4, r5, 4
	adds r1, r4, r5
	lsls r1, 2
	adds r1, r0
	ldrh r2, [r1, 0x2E]
	adds r2, 0xC
	ldr r3, _080B1850 @ =0x000003ff
	adds r0, r3, 0
	ands r2, r0
	ldrh r3, [r1, 0x4]
	ldr r0, _080B1854 @ =0xfffffc00
	ands r0, r3
	orrs r0, r2
	strh r0, [r1, 0x4]
	movs r0, 0x2D
	bl PlaySE
	b _080B18E4
	.align 2, 0
_080B184C: .4byte gSprites
_080B1850: .4byte 0x000003ff
_080B1854: .4byte 0xfffffc00
_080B1858:
	ldr r0, _080B1880 @ =gSprites
	lsls r4, r5, 4
	adds r1, r4, r5
	lsls r1, 2
	adds r1, r0
	ldrh r2, [r1, 0x2E]
	adds r2, 0x10
	ldr r3, _080B1884 @ =0x000003ff
	adds r0, r3, 0
	ands r2, r0
	ldrh r3, [r1, 0x4]
	ldr r0, _080B1888 @ =0xfffffc00
	ands r0, r3
	orrs r0, r2
	strh r0, [r1, 0x4]
	movs r0, 0x2D
	bl PlaySE
	b _080B18E4
	.align 2, 0
_080B1880: .4byte gSprites
_080B1884: .4byte 0x000003ff
_080B1888: .4byte 0xfffffc00
_080B188C:
	ldr r0, _080B18B4 @ =gSprites
	lsls r4, r5, 4
	adds r1, r4, r5
	lsls r1, 2
	adds r1, r0
	ldrh r2, [r1, 0x2E]
	adds r2, 0x18
	ldr r3, _080B18B8 @ =0x000003ff
	adds r0, r3, 0
	ands r2, r0
	ldrh r3, [r1, 0x4]
	ldr r0, _080B18BC @ =0xfffffc00
	ands r0, r3
	orrs r0, r2
	strh r0, [r1, 0x4]
	movs r0, 0xC3
	bl PlaySE
	b _080B18E4
	.align 2, 0
_080B18B4: .4byte gSprites
_080B18B8: .4byte 0x000003ff
_080B18BC: .4byte 0xfffffc00
_080B18C0:
	ldr r0, _080B1914 @ =gSprites
	lsls r4, r5, 4
	adds r1, r4, r5
	lsls r1, 2
	adds r1, r0
	ldrh r2, [r1, 0x2E]
	adds r2, 0x14
	ldr r3, _080B1918 @ =0x000003ff
	adds r0, r3, 0
	ands r2, r0
	ldrh r3, [r1, 0x4]
	ldr r0, _080B191C @ =0xfffffc00
	ands r0, r3
	orrs r0, r2
	strh r0, [r1, 0x4]
	movs r0, 0x2D
	bl PlaySE
_080B18E4:
	adds r2, r4, 0
	ldr r4, _080B1914 @ =gSprites
	adds r2, r5
	lsls r2, 2
	adds r1, r2, r4
	movs r0, 0
	strh r0, [r1, 0x30]
	adds r1, 0x3E
	ldrb r3, [r1]
	subs r0, 0x5
	ands r0, r3
	strb r0, [r1]
	adds r4, 0x1C
	adds r2, r4
	ldr r0, _080B1920 @ =sub_80B16D0
	str r0, [r2]
	ldr r2, _080B1924 @ =gSharedMem + 0x19204
	ldrb r0, [r2, 0x6]
	movs r1, 0x10
	orrs r0, r1
	strb r0, [r2, 0x6]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B1914: .4byte gSprites
_080B1918: .4byte 0x000003ff
_080B191C: .4byte 0xfffffc00
_080B1920: .4byte sub_80B16D0
_080B1924: .4byte gSharedMem + 0x19204
	thumb_func_end sub_80B1710

	thumb_func_start sub_80B1928
sub_80B1928: @ 80B1928
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r5, 0
	ldr r6, _080B19BC @ =gSharedMem + 0x19204
	ldr r0, _080B19C0 @ =gSprites
	mov r10, r0
	movs r1, 0x58
	adds r1, r6
	mov r9, r1
	ldr r0, _080B19C4 @ =0x06010000
	mov r8, r0
	ldr r7, _080B19C8 @ =REG_BG0CNT
_080B1946:
	movs r0, 0x13
	ldrsb r0, [r6, r0]
	ldr r4, _080B19CC @ =gContestApplauseMeterGfx
	cmp r5, r0
	bge _080B1952
	adds r4, 0x40
_080B1952:
	mov r0, r9
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r10
	ldrh r1, [r0, 0x4]
	lsls r1, 22
	lsrs r1, 22
	adds r0, r5, 0
	adds r0, 0x11
	adds r1, r0
	lsls r1, 5
	add r1, r8
	adds r0, r4, 0
	adds r2, r7, 0
	bl CpuSet
	adds r0, r4, 0
	adds r0, 0x20
	mov r1, r9
	ldrb r2, [r1]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	add r1, r10
	ldrh r1, [r1, 0x4]
	lsls r1, 22
	lsrs r1, 22
	adds r2, r5, 0
	adds r2, 0x19
	adds r1, r2
	lsls r1, 5
	add r1, r8
	adds r2, r7, 0
	bl CpuSet
	movs r0, 0x13
	ldrsb r0, [r6, r0]
	cmp r0, 0x4
	ble _080B19A8
	bl sub_80B1A2C
_080B19A8:
	adds r5, 0x1
	cmp r5, 0x4
	ble _080B1946
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B19BC: .4byte gSharedMem + 0x19204
_080B19C0: .4byte gSprites
_080B19C4: .4byte 0x06010000
_080B19C8: .4byte REG_BG0CNT
_080B19CC: .4byte gContestApplauseMeterGfx
	thumb_func_end sub_80B1928

	thumb_func_start unref_sub_80B19D0
unref_sub_80B19D0: @ 80B19D0
	push {lr}
	sub sp, 0x18
	ldr r1, _080B19F4 @ =gUnknown_083CC2EC
	add r0, sp, 0x4
	bl StringCopy
	ldr r0, _080B19F8 @ =gUnknown_03004210
	movs r2, 0xAA
	lsls r2, 2
	movs r1, 0
	str r1, [sp]
	add r1, sp, 0x4
	movs r3, 0
	bl sub_8003460
	add sp, 0x18
	pop {r0}
	bx r0
	.align 2, 0
_080B19F4: .4byte gUnknown_083CC2EC
_080B19F8: .4byte gUnknown_03004210
	thumb_func_end unref_sub_80B19D0

	thumb_func_start contest_get_move_excitement
contest_get_move_excitement: @ 80B19FC
	lsls r0, 16
	ldr r3, _080B1A20 @ =gContestExcitementTable
	ldr r1, _080B1A24 @ =gContestMoves
	lsrs r0, 13
	adds r0, r1
	ldrb r1, [r0, 0x1]
	lsls r1, 29
	lsrs r1, 29
	ldr r0, _080B1A28 @ =gScriptContestCategory
	ldrh r2, [r0]
	lsls r0, r2, 2
	adds r0, r2
	adds r1, r0
	adds r1, r3
	movs r0, 0
	ldrsb r0, [r1, r0]
	bx lr
	.align 2, 0
_080B1A20: .4byte gContestExcitementTable
_080B1A24: .4byte gContestMoves
_080B1A28: .4byte gScriptContestCategory
	thumb_func_end contest_get_move_excitement

	thumb_func_start sub_80B1A2C
sub_80B1A2C: @ 80B1A2C
	push {r4,r5,lr}
	ldr r0, _080B1A60 @ =c3_08130B10
	movs r1, 0xA
	bl CreateTask
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	ldr r0, _080B1A64 @ =gTasks
	lsls r4, r5, 2
	adds r4, r5
	lsls r4, 3
	adds r4, r0
	movs r0, 0x1
	strh r0, [r4, 0xA]
	ldr r0, _080B1A68 @ =0x0000abe2
	bl IndexOfSpritePaletteTag
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4, 0xC]
	adds r0, r5, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	.align 2, 0
_080B1A60: .4byte c3_08130B10
_080B1A64: .4byte gTasks
_080B1A68: .4byte 0x0000abe2
	thumb_func_end sub_80B1A2C

	thumb_func_start c3_08130B10
c3_08130B10: @ 80B1A6C
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, _080B1A9C @ =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r2, r0, r1
	ldrh r0, [r2, 0x8]
	adds r0, 0x1
	strh r0, [r2, 0x8]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x1
	bne _080B1B06
	movs r0, 0
	strh r0, [r2, 0x8]
	movs r3, 0xE
	ldrsh r0, [r2, r3]
	cmp r0, 0
	bne _080B1AA0
	ldrh r0, [r2, 0x10]
	adds r0, 0x1
	b _080B1AA4
	.align 2, 0
_080B1A9C: .4byte gTasks
_080B1AA0:
	ldrh r0, [r2, 0x10]
	subs r0, 0x1
_080B1AA4:
	strh r0, [r2, 0x10]
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r4, r0, r1
	movs r1, 0xC
	ldrsh r0, [r4, r1]
	lsls r0, 4
	movs r3, 0x84
	lsls r3, 1
	adds r6, r3, 0
	adds r0, r6
	lsls r0, 16
	lsrs r0, 16
	ldrb r2, [r4, 0x10]
	ldr r3, _080B1B0C @ =0x00007fff
	movs r1, 0x1
	bl BlendPalette
	movs r1, 0x10
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _080B1AD6
	cmp r0, 0x10
	bne _080B1B06
_080B1AD6:
	ldrh r0, [r4, 0xE]
	movs r1, 0x1
	eors r0, r1
	strh r0, [r4, 0xE]
	ldr r0, _080B1B10 @ =gSharedMem + 0x19204
	ldrb r0, [r0, 0x13]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x4
	bgt _080B1B06
	movs r3, 0xC
	ldrsh r0, [r4, r3]
	lsls r0, 4
	adds r0, r6
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	movs r2, 0
	movs r3, 0x1F
	bl BlendPalette
	adds r0, r5, 0
	bl DestroyTask
_080B1B06:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B1B0C: .4byte 0x00007fff
_080B1B10: .4byte gSharedMem + 0x19204
	thumb_func_end c3_08130B10

	thumb_func_start sub_80B1B14
sub_80B1B14: @ 80B1B14
	push {r4,lr}
	ldr r0, _080B1B58 @ =sub_80B1B68
	movs r1, 0xA
	bl CreateTask
	ldr r4, _080B1B5C @ =gSprites
	ldr r3, _080B1B60 @ =gSharedMem + 0x19204
	adds r2, r3, 0
	adds r2, 0x58
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, _080B1B64 @ =0x0000ffba
	strh r1, [r0, 0x24]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
	ldrb r0, [r3, 0x6]
	movs r1, 0x40
	orrs r0, r1
	strb r0, [r3, 0x6]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B1B58: .4byte sub_80B1B68
_080B1B5C: .4byte gSprites
_080B1B60: .4byte gSharedMem + 0x19204
_080B1B64: .4byte 0x0000ffba
	thumb_func_end sub_80B1B14

	thumb_func_start sub_80B1B68
sub_80B1B68: @ 80B1B68
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	adds r3, r0, 0
	ldr r4, _080B1BD0 @ =gSharedMem + 0x19204
	adds r0, r4, 0
	adds r0, 0x58
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _080B1BD4 @ =gSprites
	adds r2, r0, r1
	ldr r0, _080B1BD8 @ =gTasks
	lsls r1, r3, 2
	adds r1, r3
	lsls r1, 3
	adds r1, r0
	movs r5, 0xD0
	lsls r5, 3
	adds r0, r5, 0
	ldrh r5, [r1, 0x1C]
	adds r0, r5
	strh r0, [r1, 0x1C]
	lsls r0, 16
	asrs r0, 24
	ldrh r5, [r2, 0x24]
	adds r0, r5
	strh r0, [r2, 0x24]
	ldrb r0, [r1, 0x1C]
	strh r0, [r1, 0x1C]
	movs r1, 0x24
	ldrsh r0, [r2, r1]
	cmp r0, 0
	ble _080B1BB2
	movs r0, 0
	strh r0, [r2, 0x24]
_080B1BB2:
	movs r5, 0x24
	ldrsh r0, [r2, r5]
	cmp r0, 0
	bne _080B1BCA
	ldrb r1, [r4, 0x6]
	movs r0, 0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r4, 0x6]
	adds r0, r3, 0
	bl DestroyTask
_080B1BCA:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B1BD0: .4byte gSharedMem + 0x19204
_080B1BD4: .4byte gSprites
_080B1BD8: .4byte gTasks
	thumb_func_end sub_80B1B68

	thumb_func_start sub_80B1BDC
sub_80B1BDC: @ 80B1BDC
	push {r4-r6,lr}
	ldr r6, _080B1C04 @ =gSprites
	ldr r4, _080B1C08 @ =gSharedMem + 0x19204
	adds r5, r4, 0
	adds r5, 0x58
	ldrb r0, [r5]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r6
	adds r1, 0x3E
	ldrb r0, [r1]
	lsls r0, 29
	cmp r0, 0
	bge _080B1C0C
	ldrb r1, [r4, 0x6]
	movs r0, 0x41
	negs r0, r0
	ands r0, r1
	b _080B1C28
	.align 2, 0
_080B1C04: .4byte gSprites
_080B1C08: .4byte gSharedMem + 0x19204
_080B1C0C:
	ldr r0, _080B1C30 @ =sub_80B1C34
	movs r1, 0xA
	bl CreateTask
	ldrb r1, [r5]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	movs r1, 0
	strh r1, [r0, 0x24]
	ldrb r0, [r4, 0x6]
	movs r1, 0x40
	orrs r0, r1
_080B1C28:
	strb r0, [r4, 0x6]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B1C30: .4byte sub_80B1C34
	thumb_func_end sub_80B1BDC

	thumb_func_start sub_80B1C34
sub_80B1C34: @ 80B1C34
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	adds r4, r0, 0
	ldr r5, _080B1CAC @ =gSharedMem + 0x19204
	adds r0, r5, 0
	adds r0, 0x58
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _080B1CB0 @ =gSprites
	adds r3, r0, r1
	ldr r0, _080B1CB4 @ =gTasks
	lsls r2, r4, 2
	adds r2, r4
	lsls r2, 3
	adds r2, r0
	movs r1, 0xD0
	lsls r1, 3
	adds r0, r1, 0
	ldrh r1, [r2, 0x1C]
	adds r0, r1
	strh r0, [r2, 0x1C]
	lsls r0, 16
	asrs r0, 24
	ldrh r1, [r3, 0x24]
	subs r1, r0
	strh r1, [r3, 0x24]
	ldrb r0, [r2, 0x1C]
	strh r0, [r2, 0x1C]
	movs r2, 0x24
	ldrsh r0, [r3, r2]
	movs r1, 0x46
	negs r1, r1
	cmp r0, r1
	bge _080B1C82
	ldr r0, _080B1CB8 @ =0x0000ffba
	strh r0, [r3, 0x24]
_080B1C82:
	movs r2, 0x24
	ldrsh r0, [r3, r2]
	cmp r0, r1
	bne _080B1CA6
	adds r2, r3, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r5, 0x6]
	movs r0, 0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r5, 0x6]
	adds r0, r4, 0
	bl DestroyTask
_080B1CA6:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B1CAC: .4byte gSharedMem + 0x19204
_080B1CB0: .4byte gSprites
_080B1CB4: .4byte gTasks
_080B1CB8: .4byte 0x0000ffba
	thumb_func_end sub_80B1C34

	thumb_func_start sub_80B1CBC
sub_80B1CBC: @ 80B1CBC
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, _080B1CF0 @ =sub_80B1CFC
	movs r1, 0x5
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080B1CF4 @ =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	lsls r4, 24
	asrs r4, 24
	strh r4, [r1, 0x8]
	ldr r2, _080B1CF8 @ =gSharedMem + 0x19204
	ldrb r0, [r2, 0x6]
	movs r1, 0x20
	orrs r0, r1
	strb r0, [r2, 0x6]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B1CF0: .4byte sub_80B1CFC
_080B1CF4: .4byte gTasks
_080B1CF8: .4byte gSharedMem + 0x19204
	thumb_func_end sub_80B1CBC

	thumb_func_start sub_80B1CFC
sub_80B1CFC: @ 80B1CFC
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, _080B1D20 @ =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r4, r0, r1
	movs r1, 0x1C
	ldrsh r0, [r4, r1]
	cmp r0, 0x1
	beq _080B1D30
	cmp r0, 0x1
	bgt _080B1D24
	cmp r0, 0
	beq _080B1D2A
	b _080B1D78
	.align 2, 0
_080B1D20: .4byte gTasks
_080B1D24:
	cmp r0, 0x2
	beq _080B1D50
	b _080B1D78
_080B1D2A:
	bl sub_80B1B14
	b _080B1D44
_080B1D30:
	ldr r0, _080B1D4C @ =gSharedMem + 0x19204
	ldrb r1, [r0, 0x6]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	bne _080B1D78
	movs r0, 0x8
	ldrsb r0, [r4, r0]
	bl nullsub_18
_080B1D44:
	ldrh r0, [r4, 0x1C]
	adds r0, 0x1
	strh r0, [r4, 0x1C]
	b _080B1D78
	.align 2, 0
_080B1D4C: .4byte gSharedMem + 0x19204
_080B1D50:
	ldrh r0, [r4, 0x1E]
	adds r1, r0, 0x1
	strh r1, [r4, 0x1E]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x14
	ble _080B1D78
	movs r0, 0
	strh r0, [r4, 0x1E]
	bl sub_80B1928
	ldr r2, _080B1D80 @ =gSharedMem + 0x19204
	ldrb r1, [r2, 0x6]
	movs r0, 0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, 0x6]
	adds r0, r5, 0
	bl DestroyTask
_080B1D78:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B1D80: .4byte gSharedMem + 0x19204
	thumb_func_end sub_80B1CFC

	thumb_func_start unref_sub_80B1D84
unref_sub_80B1D84: @ 80B1D84
	ldr r3, _080B1DB0 @ =gSprites
	ldr r2, _080B1DB4 @ =gSharedMem + 0x19204
	adds r2, 0x58
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	movs r1, 0
	strh r1, [r0, 0x24]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_080B1DB0: .4byte gSprites
_080B1DB4: .4byte gSharedMem + 0x19204
	thumb_func_end unref_sub_80B1D84

	thumb_func_start unref_sub_80B1DB8
unref_sub_80B1DB8: @ 80B1DB8
	ldr r2, _080B1DD4 @ =gSprites
	ldr r0, _080B1DD8 @ =gSharedMem + 0x19204
	adds r0, 0x58
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_080B1DD4: .4byte gSprites
_080B1DD8: .4byte gSharedMem + 0x19204
	thumb_func_end unref_sub_80B1DB8

	thumb_func_start sub_80B1DDC
sub_80B1DDC: @ 80B1DDC
	push {lr}
	ldr r0, _080B1DF4 @ =sub_80B1DFC
	movs r1, 0xF
	bl CreateTask
	ldr r2, _080B1DF8 @ =gSharedMem + 0x19204
	ldrb r0, [r2, 0x6]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2, 0x6]
	pop {r0}
	bx r0
	.align 2, 0
_080B1DF4: .4byte sub_80B1DFC
_080B1DF8: .4byte gSharedMem + 0x19204
	thumb_func_end sub_80B1DDC

	thumb_func_start sub_80B1DFC
sub_80B1DFC: @ 80B1DFC
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r2, _080B1E3C @ =gTasks
	lsls r4, r5, 2
	adds r0, r4, r5
	lsls r0, 3
	adds r3, r0, r2
	ldrh r0, [r3, 0x1C]
	adds r1, r0, 0x1
	strh r1, [r3, 0x1C]
	lsls r0, 16
	asrs r0, 16
	adds r6, r2, 0
	cmp r0, 0x6
	ble _080B1E8E
	movs r0, 0
	strh r0, [r3, 0x1C]
	movs r1, 0x1E
	ldrsh r0, [r3, r1]
	cmp r0, 0
	bne _080B1E50
	ldr r1, _080B1E40 @ =gSharedMem + 0x16800
	ldr r2, _080B1E44 @ =0x06002000
	ldr r0, _080B1E48 @ =0x040000d4
	str r1, [r0]
	str r2, [r0, 0x4]
	ldr r1, _080B1E4C @ =0x84000400
	str r1, [r0, 0x8]
	ldr r0, [r0, 0x8]
	b _080B1E66
	.align 2, 0
_080B1E3C: .4byte gTasks
_080B1E40: .4byte gSharedMem + 0x16800
_080B1E44: .4byte 0x06002000
_080B1E48: .4byte 0x040000d4
_080B1E4C: .4byte 0x84000400
_080B1E50:
	ldr r1, _080B1E94 @ =gSharedMem + 0x15800
	ldr r2, _080B1E98 @ =0x06002000
	ldr r0, _080B1E9C @ =0x040000d4
	str r1, [r0]
	str r2, [r0, 0x4]
	ldr r1, _080B1EA0 @ =0x84000400
	str r1, [r0, 0x8]
	ldr r0, [r0, 0x8]
	ldrh r0, [r3, 0x20]
	adds r0, 0x1
	strh r0, [r3, 0x20]
_080B1E66:
	adds r0, r4, 0
	adds r0, r5
	lsls r0, 3
	adds r0, r6
	ldrh r1, [r0, 0x1E]
	movs r2, 0x1
	eors r1, r2
	strh r1, [r0, 0x1E]
	movs r1, 0x20
	ldrsh r0, [r0, r1]
	cmp r0, 0x9
	bne _080B1E8E
	ldr r2, _080B1EA4 @ =gSharedMem + 0x19204
	ldrb r1, [r2, 0x6]
	movs r0, 0x7F
	ands r0, r1
	strb r0, [r2, 0x6]
	adds r0, r5, 0
	bl DestroyTask
_080B1E8E:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B1E94: .4byte gSharedMem + 0x15800
_080B1E98: .4byte 0x06002000
_080B1E9C: .4byte 0x040000d4
_080B1EA0: .4byte 0x84000400
_080B1EA4: .4byte gSharedMem + 0x19204
	thumb_func_end sub_80B1DFC

	thumb_func_start sub_80B1EA8
sub_80B1EA8: @ 80B1EA8
	push {r4-r7,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r1, 24
	lsrs r5, r1, 24
	ldr r0, _080B1EE4 @ =sub_80B1F4C
	movs r1, 0xA
	bl CreateTask
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r4, 24
	cmp r4, 0
	ble _080B1F08
	ldr r7, _080B1EE8 @ =0x0000237e
	lsls r0, r5, 24
	adds r4, r0, 0
	cmp r4, 0
	ble _080B1EF0
	movs r5, 0
	ldr r2, _080B1EEC @ =gSharedMem + 0x19204
	movs r1, 0x13
	ldrsb r1, [r2, r1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 24
	lsrs r3, r0, 24
	b _080B1F1E
	.align 2, 0
_080B1EE4: .4byte sub_80B1F4C
_080B1EE8: .4byte 0x0000237e
_080B1EEC: .4byte gSharedMem + 0x19204
_080B1EF0:
	ldr r2, _080B1F04 @ =gSharedMem + 0x19204
	movs r1, 0x13
	ldrsb r1, [r2, r1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 24
	lsrs r5, r0, 24
	movs r3, 0
	b _080B1F1E
	.align 2, 0
_080B1F04: .4byte gSharedMem + 0x19204
_080B1F08:
	movs r7, 0
	lsls r0, r5, 24
	adds r4, r0, 0
	cmp r4, 0
	ble _080B1F18
	movs r5, 0
	movs r3, 0xC
	b _080B1F1C
_080B1F18:
	movs r5, 0xC
	movs r3, 0
_080B1F1C:
	ldr r2, _080B1F44 @ =gSharedMem + 0x19204
_080B1F1E:
	ldr r1, _080B1F48 @ =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r1
	strh r7, [r0, 0x8]
	strh r5, [r0, 0xA]
	asrs r1, r4, 24
	strh r1, [r0, 0xC]
	strh r3, [r0, 0xE]
	ldrb r1, [r2, 0x7]
	movs r0, 0x2
	negs r0, r0
	ands r0, r1
	strb r0, [r2, 0x7]
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B1F44: .4byte gSharedMem + 0x19204
_080B1F48: .4byte gTasks
	thumb_func_end sub_80B1EA8

	thumb_func_start sub_80B1F4C
sub_80B1F4C: @ 80B1F4C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r2, _080B1F7C @ =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r3, r0, r2
	ldrh r0, [r3, 0x1C]
	adds r1, r0, 0x1
	strh r1, [r3, 0x1C]
	lsls r0, 16
	cmp r0, 0
	blt _080B1FC4
	movs r0, 0
	strh r0, [r3, 0x1C]
	movs r1, 0xC
	ldrsh r0, [r3, r1]
	cmp r0, 0
	ble _080B1F80
	ldrh r0, [r3, 0xA]
	adds r0, 0x1
	b _080B1F84
	.align 2, 0
_080B1F7C: .4byte gTasks
_080B1F80:
	ldrh r0, [r3, 0xA]
	subs r0, 0x1
_080B1F84:
	strh r0, [r3, 0xA]
	lsls r4, r5, 2
	adds r4, r5
	lsls r4, 3
	adds r4, r2
	ldrb r2, [r4, 0xA]
	ldrh r3, [r4, 0x8]
	movs r0, 0x11
	movs r1, 0x1
	bl BlendPalette
	ldrb r2, [r4, 0xA]
	ldrh r3, [r4, 0x8]
	movs r0, 0x1A
	movs r1, 0x1
	bl BlendPalette
	movs r2, 0xA
	ldrsh r1, [r4, r2]
	movs r2, 0xE
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _080B1FC4
	adds r0, r5, 0
	bl DestroyTask
	ldr r2, _080B1FCC @ =gSharedMem + 0x19204
	ldrb r1, [r2, 0x7]
	movs r0, 0x2
	negs r0, r0
	ands r0, r1
	strb r0, [r2, 0x7]
_080B1FC4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B1FCC: .4byte gSharedMem + 0x19204
	thumb_func_end sub_80B1F4C

	thumb_func_start sub_80B1FD0
sub_80B1FD0: @ 80B1FD0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	movs r5, 0
	ldr r0, _080B204C @ =gSharedMem + 0x19260
	ldr r6, _080B2050 @ =gSprites
	adds r4, r0, 0
	adds r4, 0xD8
	adds r7, r0, 0
_080B1FE8:
	ldrb r1, [r7, 0x10]
	movs r0, 0xC0
	ands r0, r1
	cmp r0, 0
	beq _080B2064
	mov r0, r8
	cmp r0, 0
	beq _080B2064
	lsls r0, r5, 24
	lsrs r0, 24
	bl sub_80B208C
	ldrb r2, [r4, 0x1]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r6
	ldrh r1, [r1, 0x4]
	lsls r1, 22
	lsrs r1, 17
	ldr r2, _080B2054 @ =0x060100a0
	adds r1, r2
	ldr r2, _080B2058 @ =REG_BG0HOFS
	bl CpuSet
	ldrb r0, [r4, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r6
	ldr r2, _080B205C @ =gUnknown_083CA33C
	ldr r0, _080B2060 @ =gUnknown_02038696
	adds r0, r5, r0
	ldrb r0, [r0]
	adds r0, r2
	ldrb r0, [r0]
	strh r0, [r1, 0x22]
	ldrb r1, [r4, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r3, 0x5
	negs r3, r3
	adds r2, r3, 0
	ands r1, r2
	b _080B2076
	.align 2, 0
_080B204C: .4byte gSharedMem + 0x19260
_080B2050: .4byte gSprites
_080B2054: .4byte 0x060100a0
_080B2058: .4byte REG_BG0HOFS
_080B205C: .4byte gUnknown_083CA33C
_080B2060: .4byte gUnknown_02038696
_080B2064:
	ldrb r1, [r4, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
_080B2076:
	strb r1, [r0]
	adds r4, 0x4
	adds r7, 0x1C
	adds r5, 0x1
	cmp r5, 0x3
	ble _080B1FE8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80B1FD0

	thumb_func_start sub_80B208C
sub_80B208C: @ 80B208C
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	ldr r0, _080B20B0 @ =gSharedMem + 0x19260
	adds r2, r1, r0
	ldrb r1, [r2, 0x10]
	movs r0, 0xC0
	ands r0, r1
	cmp r0, 0x40
	bne _080B20B8
	ldrb r0, [r2, 0x19]
	lsls r0, 6
	ldr r1, _080B20B4 @ =gContestNextTurnNumbersGfx
	adds r0, r1
	b _080B20BA
	.align 2, 0
_080B20B0: .4byte gSharedMem + 0x19260
_080B20B4: .4byte gContestNextTurnNumbersGfx
_080B20B8:
	ldr r0, _080B20C0 @ =gContestNextTurnRandomGfx
_080B20BA:
	pop {r1}
	bx r1
	.align 2, 0
_080B20C0: .4byte gContestNextTurnRandomGfx
	thumb_func_end sub_80B208C

	thumb_func_start sub_80B20C4
sub_80B20C4: @ 80B20C4
	push {r4-r7,lr}
	movs r6, 0
	ldr r7, _080B2134 @ =gSharedMem + 0x192DD
_080B20CA:
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r0, 0
	beq _080B2126
	lsls r0, r6, 24
	lsrs r5, r0, 24
	adds r0, r5, 0
	bl sub_80AF59C
	lsls r0, 24
	cmp r0, 0
	bne _080B2126
	ldr r0, _080B2138 @ =gUnknown_02038696
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r4, r0, 2
	adds r4, r0
	adds r4, 0x2
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0x3
	bl sub_80AEFE8
	lsls r0, 16
	lsrs r0, 16
	lsls r4, 6
	ldr r2, _080B213C @ =0x0600c028
	adds r1, r4, r2
	strh r0, [r1]
	ldr r1, _080B2140 @ =0x0600c02a
	adds r2, r4, r1
	adds r1, r0, 0x1
	strh r1, [r2]
	ldr r1, _080B2144 @ =0x0600c068
	adds r2, r4, r1
	adds r1, r0, 0
	adds r1, 0x10
	strh r1, [r2]
	ldr r2, _080B2148 @ =0x0600c06a
	adds r4, r2
	adds r0, 0x11
	strh r0, [r4]
	movs r0, 0x63
	bl PlaySE
_080B2126:
	adds r6, 0x1
	cmp r6, 0x3
	ble _080B20CA
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B2134: .4byte gSharedMem + 0x192DD
_080B2138: .4byte gUnknown_02038696
_080B213C: .4byte 0x0600c028
_080B2140: .4byte 0x0600c02a
_080B2144: .4byte 0x0600c068
_080B2148: .4byte 0x0600c06a
	thumb_func_end sub_80B20C4

	thumb_func_start sub_80B214C
sub_80B214C: @ 80B214C
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	ldr r0, _080B2178 @ =gSharedMem + 0x19260
	adds r2, r1, r0
	ldrb r1, [r2, 0x15]
	movs r3, 0x1
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	bne _080B2172
	ldrb r1, [r2, 0xC]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _080B217C
_080B2172:
	movs r0, 0
	b _080B217E
	.align 2, 0
_080B2178: .4byte gSharedMem + 0x19260
_080B217C:
	movs r0, 0x1
_080B217E:
	pop {r1}
	bx r1
	thumb_func_end sub_80B214C

	thumb_func_start sub_80B2184
sub_80B2184: @ 80B2184
	push {r4-r7,lr}
	sub sp, 0x4
	ldr r4, _080B2250 @ =REG_BG1CNT
	ldrb r1, [r4]
	movs r0, 0x4
	negs r0, r0
	ands r0, r1
	strb r0, [r4]
	ldrb r1, [r4, 0x1]
	movs r0, 0x3F
	ands r0, r1
	movs r1, 0x40
	orrs r0, r1
	strb r0, [r4, 0x1]
	ldrb r1, [r4, 0x1]
	movs r0, 0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r4, 0x1]
	ldr r0, _080B2254 @ =gUnknown_030042C0
	movs r2, 0xF0
	strh r2, [r0]
	ldr r0, _080B2258 @ =gUnknown_030041B4
	movs r1, 0xA0
	strh r1, [r0]
	ldr r0, _080B225C @ =REG_BG1HOFS
	strh r2, [r0]
	adds r0, 0x2
	strh r1, [r0]
	ldr r1, _080B2260 @ =0x0600f000
	movs r0, 0
	str r0, [sp]
	ldr r0, _080B2264 @ =0x040000d4
	mov r2, sp
	str r2, [r0]
	str r1, [r0, 0x4]
	ldr r2, _080B2268 @ =0x85000400
	str r2, [r0, 0x8]
	ldr r0, [r0, 0x8]
	ldr r0, _080B226C @ =gUnknown_08D17C3C
	bl LZDecompressVram
	ldrb r1, [r4]
	movs r2, 0xD
	negs r2, r2
	adds r0, r2, 0
	ands r0, r1
	strb r0, [r4]
	movs r4, 0
	ldr r6, _080B2270 @ =gSprites
	adds r7, r2, 0
	movs r5, 0x4
	ldr r3, _080B2274 @ =gSharedMem + 0x19338
_080B21EE:
	ldrb r0, [r3]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r6
	ldrb r2, [r1, 0x5]
	adds r0, r7, 0
	ands r0, r2
	orrs r0, r5
	strb r0, [r1, 0x5]
	ldrb r0, [r3, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r6
	ldrb r2, [r1, 0x5]
	adds r0, r7, 0
	ands r0, r2
	orrs r0, r5
	strb r0, [r1, 0x5]
	adds r3, 0x4
	adds r4, 0x1
	cmp r4, 0x3
	ble _080B21EE
	ldr r3, _080B2278 @ =REG_BG2CNT
	ldrb r2, [r3]
	movs r1, 0x4
	negs r1, r1
	adds r0, r1, 0
	ands r0, r2
	movs r4, 0x1
	orrs r0, r4
	strb r0, [r3]
	ldr r2, _080B227C @ =REG_BG0CNT
	ldrb r0, [r2]
	ands r1, r0
	orrs r1, r4
	strb r1, [r2]
	adds r2, 0x2
	ldrb r1, [r2, 0x1]
	movs r0, 0x3F
	ands r0, r1
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2, 0x1]
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B2250: .4byte REG_BG1CNT
_080B2254: .4byte gUnknown_030042C0
_080B2258: .4byte gUnknown_030041B4
_080B225C: .4byte REG_BG1HOFS
_080B2260: .4byte 0x0600f000
_080B2264: .4byte 0x040000d4
_080B2268: .4byte 0x85000400
_080B226C: .4byte gUnknown_08D17C3C
_080B2270: .4byte gSprites
_080B2274: .4byte gSharedMem + 0x19338
_080B2278: .4byte REG_BG2CNT
_080B227C: .4byte REG_BG0CNT
	thumb_func_end sub_80B2184

	thumb_func_start sub_80B2280
sub_80B2280: @ 80B2280
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	ldr r2, _080B2358 @ =0x06008000
	movs r3, 0x80
	lsls r3, 6
	ldr r0, _080B235C @ =gUnknown_030042C0
	mov r12, r0
	ldr r0, _080B2360 @ =gUnknown_030041B4
	mov r8, r0
	movs r5, 0
	ldr r1, _080B2364 @ =0x040000d4
	movs r4, 0x80
	lsls r4, 5
	ldr r6, _080B2368 @ =0x85000400
	movs r7, 0x85
	lsls r7, 24
_080B22A4:
	str r5, [sp]
	mov r0, sp
	str r0, [r1]
	str r2, [r1, 0x4]
	str r6, [r1, 0x8]
	ldr r0, [r1, 0x8]
	adds r2, r4
	subs r3, r4
	cmp r3, r4
	bhi _080B22A4
	str r5, [sp]
	mov r0, sp
	str r0, [r1]
	str r2, [r1, 0x4]
	lsrs r0, r3, 2
	orrs r0, r7
	str r0, [r1, 0x8]
	ldr r0, [r1, 0x8]
	ldr r1, _080B236C @ =0x0600f000
	movs r2, 0
	str r2, [sp]
	ldr r0, _080B2364 @ =0x040000d4
	mov r3, sp
	str r3, [r0]
	str r1, [r0, 0x4]
	ldr r1, _080B2368 @ =0x85000400
	str r1, [r0, 0x8]
	ldr r0, [r0, 0x8]
	mov r0, r12
	strh r2, [r0]
	mov r3, r8
	strh r2, [r3]
	ldr r2, _080B2370 @ =REG_BG1CNT
	ldrb r1, [r2]
	movs r0, 0x4
	negs r0, r0
	ands r0, r1
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r2, 0x1]
	movs r0, 0x3F
	ands r0, r1
	strb r0, [r2, 0x1]
	ldrb r1, [r2, 0x1]
	movs r0, 0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, 0x1]
	ldrb r1, [r2]
	movs r3, 0xD
	negs r3, r3
	adds r0, r3, 0
	ands r0, r1
	movs r1, 0x8
	orrs r0, r1
	strb r0, [r2]
	movs r4, 0
	ldr r5, _080B2374 @ =gSprites
	adds r6, r3, 0
	ldr r3, _080B2378 @ =gSharedMem + 0x19338
_080B231E:
	ldrb r0, [r3]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r5
	ldrb r2, [r1, 0x5]
	adds r0, r6, 0
	ands r0, r2
	strb r0, [r1, 0x5]
	ldrb r0, [r3, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r5
	ldrb r2, [r1, 0x5]
	adds r0, r6, 0
	ands r0, r2
	strb r0, [r1, 0x5]
	adds r3, 0x4
	adds r4, 0x1
	cmp r4, 0x3
	ble _080B231E
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B2358: .4byte 0x06008000
_080B235C: .4byte gUnknown_030042C0
_080B2360: .4byte gUnknown_030041B4
_080B2364: .4byte 0x040000d4
_080B2368: .4byte 0x85000400
_080B236C: .4byte 0x0600f000
_080B2370: .4byte REG_BG1CNT
_080B2374: .4byte gSprites
_080B2378: .4byte gSharedMem + 0x19338
	thumb_func_end sub_80B2280

	thumb_func_start sub_80B237C
sub_80B237C: @ 80B237C
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r1, _080B23AC @ =gUnknown_030042C0
	movs r0, 0
	strh r0, [r1]
	ldr r1, _080B23B0 @ =gUnknown_030041B4
	movs r0, 0xA0
	strh r0, [r1]
	movs r0, 0x62
	movs r1, 0
	bl PlaySE12WithPanning
	ldr r1, _080B23B4 @ =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _080B23B8 @ =sub_80B23BC
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B23AC: .4byte gUnknown_030042C0
_080B23B0: .4byte gUnknown_030041B4
_080B23B4: .4byte gTasks
_080B23B8: .4byte sub_80B23BC
	thumb_func_end sub_80B237C

	thumb_func_start sub_80B23BC
sub_80B23BC: @ 80B23BC
	push {lr}
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r1, _080B23F4 @ =gUnknown_030041B4
	ldrh r0, [r1]
	subs r0, 0x7
	strh r0, [r1]
	lsls r0, 16
	cmp r0, 0
	bge _080B23D4
	movs r0, 0
	strh r0, [r1]
_080B23D4:
	ldrh r2, [r1]
	cmp r2, 0
	bne _080B23EE
	ldr r0, _080B23F8 @ =gTasks
	lsls r1, r3, 2
	adds r1, r3
	lsls r1, 3
	adds r1, r0
	strh r2, [r1, 0x8]
	strh r2, [r1, 0xA]
	strh r2, [r1, 0xC]
	ldr r0, _080B23FC @ =sub_80B2400
	str r0, [r1]
_080B23EE:
	pop {r0}
	bx r0
	.align 2, 0
_080B23F4: .4byte gUnknown_030041B4
_080B23F8: .4byte gTasks
_080B23FC: .4byte sub_80B2400
	thumb_func_end sub_80B23BC

	thumb_func_start sub_80B2400
sub_80B2400: @ 80B2400
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, _080B2424 @ =gTasks
	lsls r3, r4, 2
	adds r0, r3, r4
	lsls r0, 3
	adds r5, r0, r1
	movs r0, 0x8
	ldrsh r1, [r5, r0]
	cmp r1, 0x1
	beq _080B247C
	cmp r1, 0x1
	bgt _080B2428
	cmp r1, 0
	beq _080B2432
	b _080B24FC
	.align 2, 0
_080B2424: .4byte gTasks
_080B2428:
	cmp r1, 0x2
	beq _080B24D6
	cmp r1, 0x3
	beq _080B24EC
	b _080B24FC
_080B2432:
	movs r2, 0
	adds r6, r3, 0
	ldr r5, _080B2470 @ =gSharedMem + 0x19218
	ldr r3, _080B2474 @ =gUnknown_02038696
_080B243A:
	adds r0, r2, r5
	adds r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x3
	ble _080B243A
	bl sub_80AFA5C
	bl sub_80B0588
	bl sub_80AEF50
	bl sub_80B1118
	movs r0, 0x1
	bl sub_80B1FD0
	bl sub_80AFFA0
	ldr r0, _080B2478 @ =gTasks
	adds r1, r6, r4
	lsls r1, 3
	adds r1, r0
	movs r0, 0x1
	strh r0, [r1, 0x8]
	b _080B24FC
	.align 2, 0
_080B2470: .4byte gSharedMem + 0x19218
_080B2474: .4byte gUnknown_02038696
_080B2478: .4byte gTasks
_080B247C:
	ldr r0, _080B24C0 @ =gIsLinkContest
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, 0
	beq _080B24D0
	ldr r2, _080B24C4 @ =gSharedMem + 0x19204
	ldrb r0, [r2, 0x7]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2, 0x7]
	bl sub_80AE074
	lsls r0, 24
	cmp r0, 0
	beq _080B249E
	bl sub_80AF438
_080B249E:
	ldr r4, _080B24C8 @ =sub_80C8C80
	adds r0, r4, 0
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080B24CC @ =sub_80AD8DC
	adds r1, r4, 0
	bl SetTaskFuncWithFollowupFunc
	bl sub_80AF860
	movs r0, 0x2
	strh r0, [r5, 0x8]
	b _080B24FC
	.align 2, 0
_080B24C0: .4byte gIsLinkContest
_080B24C4: .4byte gSharedMem + 0x19204
_080B24C8: .4byte sub_80C8C80
_080B24CC: .4byte sub_80AD8DC
_080B24D0:
	bl sub_80AF438
	b _080B24E2
_080B24D6:
	ldr r0, _080B24E8 @ =gSharedMem + 0x19204
	ldrb r1, [r0, 0x7]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	bne _080B24FC
_080B24E2:
	movs r0, 0x3
	strh r0, [r5, 0x8]
	b _080B24FC
	.align 2, 0
_080B24E8: .4byte gSharedMem + 0x19204
_080B24EC:
	bl sub_80AF120
	bl sub_80AEB30
	movs r0, 0
	strh r0, [r5, 0x8]
	ldr r0, _080B2504 @ =sub_80B253C
	str r0, [r5]
_080B24FC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B2504: .4byte sub_80B253C
	thumb_func_end sub_80B2400

	thumb_func_start sub_80B2508
sub_80B2508: @ 80B2508
	push {lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r1, _080B2530 @ =gUnknown_030041B4
	ldrh r0, [r1]
	adds r0, 0x7
	strh r0, [r1]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0xA0
	ble _080B252C
	ldr r0, _080B2534 @ =gTasks
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 3
	adds r1, r0
	ldr r0, _080B2538 @ =sub_80ADCDC
	str r0, [r1]
_080B252C:
	pop {r0}
	bx r0
	.align 2, 0
_080B2530: .4byte gUnknown_030041B4
_080B2534: .4byte gTasks
_080B2538: .4byte sub_80ADCDC
	thumb_func_end sub_80B2508

	thumb_func_start sub_80B253C
sub_80B253C: @ 80B253C
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080B255C @ =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldrh r2, [r1, 0xC]
	movs r3, 0xC
	ldrsh r0, [r1, r3]
	cmp r0, 0x9
	bgt _080B2560
	adds r0, r2, 0x1
	strh r0, [r1, 0xC]
	b _080B259C
	.align 2, 0
_080B255C: .4byte gTasks
_080B2560:
	ldrh r3, [r1, 0xA]
	movs r4, 0xA
	ldrsh r0, [r1, r4]
	cmp r0, 0
	bne _080B257E
	ldrh r2, [r1, 0x8]
	movs r4, 0x8
	ldrsh r0, [r1, r4]
	cmp r0, 0x10
	bne _080B257A
	adds r0, r3, 0x1
	strh r0, [r1, 0xA]
	b _080B259C
_080B257A:
	adds r0, r2, 0x1
	b _080B259A
_080B257E:
	ldrh r0, [r1, 0x8]
	movs r3, 0x8
	ldrsh r2, [r1, r3]
	cmp r2, 0
	bne _080B2598
	strh r2, [r1, 0xA]
	strh r2, [r1, 0xC]
	ldr r0, _080B2594 @ =sub_80B25A4
	str r0, [r1]
	b _080B259C
	.align 2, 0
_080B2594: .4byte sub_80B25A4
_080B2598:
	subs r0, 0x1
_080B259A:
	strh r0, [r1, 0x8]
_080B259C:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80B253C

	thumb_func_start sub_80B25A4
sub_80B25A4: @ 80B25A4
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080B25C4 @ =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r4, r1, r2
	ldrh r1, [r4, 0xC]
	movs r2, 0xC
	ldrsh r0, [r4, r2]
	cmp r0, 0x9
	bgt _080B25C8
	adds r0, r1, 0x1
	strh r0, [r4, 0xC]
	b _080B25D8
	.align 2, 0
_080B25C4: .4byte gTasks
_080B25C8:
	movs r0, 0
	strh r0, [r4, 0xC]
	movs r0, 0x61
	movs r1, 0
	bl PlaySE12WithPanning
	ldr r0, _080B25E0 @ =sub_80B2508
	str r0, [r4]
_080B25D8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B25E0: .4byte sub_80B2508
	thumb_func_end sub_80B25A4

	thumb_func_start sub_80B25E4
sub_80B25E4: @ 80B25E4
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	movs r6, 0
	ldr r5, _080B26B4 @ =gSprites
_080B25F6:
	bl AllocOamMatrix
	lsls r1, r6, 2
	ldr r2, _080B26B8 @ =gSharedMem + 0x19338
	mov r8, r2
	adds r4, r1, r2
	ldrb r1, [r4]
	lsls r3, r1, 4
	adds r3, r1
	lsls r3, 2
	adds r3, r5
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x1F
	ands r0, r1
	lsls r0, 1
	ldrb r1, [r3, 0x3]
	movs r7, 0x3F
	negs r7, r7
	adds r2, r7, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0x3]
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldrb r2, [r0, 0x1]
	movs r3, 0x4
	negs r3, r3
	adds r1, r3, 0
	ands r2, r1
	movs r1, 0x1
	orrs r2, r1
	strb r2, [r0, 0x1]
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	mov r1, r9
	bl StartSpriteAffineAnim
	mov r7, r9
	cmp r7, 0x2
	bne _080B267A
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	bl AnimateSprite
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r3, 0x5
	negs r3, r3
	adds r2, r3, 0
	ands r1, r2
	strb r1, [r0]
_080B267A:
	adds r6, 0x1
	cmp r6, 0x3
	ble _080B25F6
	ldr r0, _080B26BC @ =sub_80B26C8
	movs r1, 0x5
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080B26C0 @ =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	mov r7, r9
	strh r7, [r1, 0x8]
	ldr r2, _080B26C4 @ =0xfffffecc
	add r2, r8
	ldrb r0, [r2, 0x7]
	movs r1, 0x2
	orrs r0, r1
	strb r0, [r2, 0x7]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B26B4: .4byte gSprites
_080B26B8: .4byte gSharedMem + 0x19338
_080B26BC: .4byte sub_80B26C8
_080B26C0: .4byte gTasks
_080B26C4: .4byte 0xfffffecc
	thumb_func_end sub_80B25E4

	thumb_func_start sub_80B26C8
sub_80B26C8: @ 80B26C8
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r2, _080B2750 @ =gSprites
	ldr r4, _080B2754 @ =gSharedMem + 0x19338
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3F
	ldrb r0, [r0]
	lsls r0, 26
	cmp r0, 0
	bge _080B274A
	ldr r0, _080B2758 @ =gTasks
	lsls r1, r6, 2
	adds r1, r6
	lsls r1, 3
	adds r1, r0
	ldrb r0, [r1, 0x8]
	cmp r0, 0x1
	bne _080B2718
	adds r5, r2, 0
	movs r3, 0x4
	adds r2, r4, 0
	movs r4, 0x3
_080B26FE:
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r5
	adds r1, 0x3E
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	adds r2, 0x4
	subs r4, 0x1
	cmp r4, 0
	bge _080B26FE
_080B2718:
	movs r4, 0
_080B271A:
	lsls r0, r4, 2
	ldr r5, _080B2754 @ =gSharedMem + 0x19338
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _080B2750 @ =gSprites
	adds r0, r1
	bl FreeSpriteOamMatrix
	adds r4, 0x1
	cmp r4, 0x3
	ble _080B271A
	ldr r0, _080B275C @ =0xfffffecc
	adds r2, r5, r0
	ldrb r1, [r2, 0x7]
	movs r0, 0x3
	negs r0, r0
	ands r0, r1
	strb r0, [r2, 0x7]
	adds r0, r6, 0
	bl DestroyTask
_080B274A:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B2750: .4byte gSprites
_080B2754: .4byte gSharedMem + 0x19338
_080B2758: .4byte gTasks
_080B275C: .4byte 0xfffffecc
	thumb_func_end sub_80B26C8

	thumb_func_start sub_80B2760
sub_80B2760: @ 80B2760
	push {lr}
	lsls r0, 16
	lsrs r1, r0, 16
	movs r0, 0xB1
	lsls r0, 1
	cmp r1, r0
	bls _080B2770
	movs r1, 0x1
_080B2770:
	adds r0, r1, 0
	pop {r1}
	bx r1
	thumb_func_end sub_80B2760

	thumb_func_start sub_80B2778
sub_80B2778: @ 80B2778
	push {lr}
	lsls r0, 16
	lsrs r1, r0, 16
	ldr r0, _080B278C @ =0x0000019b
	cmp r1, r0
	bls _080B2786
	movs r1, 0
_080B2786:
	adds r0, r1, 0
	pop {r1}
	bx r1
	.align 2, 0
_080B278C: .4byte 0x0000019b
	thumb_func_end sub_80B2778

	thumb_func_start sub_80B2790
sub_80B2790: @ 80B2790
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r0, r6, 3
	subs r0, r6
	lsls r0, 2
	ldr r4, _080B27F0 @ =gSharedMem + 0x19260
	adds r0, r4
	ldrh r0, [r0, 0x6]
	bl sub_80B2760
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r1, _080B27F4 @ =gContestMons
	lsls r0, r6, 6
	adds r0, r1
	ldrh r0, [r0]
	bl sub_80B2778
	lsls r0, 16
	lsrs r7, r0, 16
	adds r4, 0xE8
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0x14
	bl memset
	bl battle_anim_clear_some_data
	ldr r1, _080B27F8 @ =gBattleMonForms
	movs r2, 0
	adds r0, r1, 0x3
_080B27D0:
	strb r2, [r0]
	subs r0, 0x1
	cmp r0, r1
	bge _080B27D0
	cmp r5, 0x90
	beq _080B2848
	cmp r5, 0x90
	bgt _080B2806
	cmp r5, 0x4C
	beq _080B2898
	cmp r5, 0x4C
	bgt _080B27FC
	cmp r5, 0xD
	beq _080B2898
	b _080B28BE
	.align 2, 0
_080B27F0: .4byte gSharedMem + 0x19260
_080B27F4: .4byte gContestMons
_080B27F8: .4byte gBattleMonForms
_080B27FC:
	cmp r5, 0x82
	beq _080B2898
	cmp r5, 0x8F
	beq _080B2898
	b _080B28BE
_080B2806:
	cmp r5, 0xD8
	beq _080B2880
	cmp r5, 0xD8
	bgt _080B2814
	cmp r5, 0xAE
	beq _080B2822
	b _080B28BE
_080B2814:
	cmp r5, 0xDA
	beq _080B288C
	movs r0, 0x88
	lsls r0, 1
	cmp r5, r0
	beq _080B2848
	b _080B28BE
_080B2822:
	ldr r0, _080B2840 @ =gBaseStats
	lsls r1, r7, 3
	subs r1, r7
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x6]
	cmp r0, 0x7
	beq _080B2838
	ldrb r0, [r1, 0x7]
	cmp r0, 0x7
	bne _080B28B8
_080B2838:
	ldr r1, _080B2844 @ =gUnknown_0202F7C4
	movs r0, 0
	b _080B28BC
	.align 2, 0
_080B2840: .4byte gBaseStats
_080B2844: .4byte gUnknown_0202F7C4
_080B2848:
	lsls r0, r6, 3
	subs r0, r6
	lsls r0, 2
	ldr r4, _080B2878 @ =gSharedMem + 0x19260
	adds r0, r4
	ldrb r5, [r0, 0x1B]
	ldr r6, _080B287C @ =gContestMons
	lsls r5, 6
	adds r0, r5, r6
	ldrh r0, [r0]
	bl sub_80B2778
	adds r4, 0xE8
	strh r0, [r4, 0x2]
	adds r6, 0x38
	adds r5, r6
	ldr r0, [r5]
	str r0, [r4, 0x10]
	ldrb r0, [r4, 0x4]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r4, 0x4]
	b _080B28BE
	.align 2, 0
_080B2878: .4byte gSharedMem + 0x19260
_080B287C: .4byte gContestMons
_080B2880:
	ldr r1, _080B2888 @ =gHappinessMoveAnim
	movs r0, 0xFF
	b _080B28BC
	.align 2, 0
_080B2888: .4byte gHappinessMoveAnim
_080B288C:
	ldr r1, _080B2894 @ =gHappinessMoveAnim
	movs r0, 0
	b _080B28BC
	.align 2, 0
_080B2894: .4byte gHappinessMoveAnim
_080B2898:
	ldr r0, _080B28B0 @ =gSharedMem + 0x19204
	adds r2, r0, 0
	adds r2, 0x5A
	ldrb r1, [r2]
	cmp r1, 0
	bne _080B28B8
	movs r0, 0x2
	strb r0, [r2]
	ldr r0, _080B28B4 @ =gUnknown_0202F7C4
	strb r1, [r0]
	b _080B28BE
	.align 2, 0
_080B28B0: .4byte gSharedMem + 0x19204
_080B28B4: .4byte gUnknown_0202F7C4
_080B28B8:
	ldr r1, _080B28C8 @ =gUnknown_0202F7C4
	movs r0, 0x1
_080B28BC:
	strb r0, [r1]
_080B28BE:
	bl sub_80B2968
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B28C8: .4byte gUnknown_0202F7C4
	thumb_func_end sub_80B2790

	thumb_func_start sub_80B28CC
sub_80B28CC: @ 80B28CC
	push {r4,lr}
	ldr r4, _080B28EC @ =gSharedMem + 0x19348
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0x14
	bl memset
	subs r4, 0xEA
	ldrb r0, [r4]
	cmp r0, 0
	beq _080B28E6
	subs r0, 0x1
	strb r0, [r4]
_080B28E6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B28EC: .4byte gSharedMem + 0x19348
	thumb_func_end sub_80B28CC

	thumb_func_start sub_80B28F0
sub_80B28F0: @ 80B28F0
	push {r4-r6,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r6, _080B2924 @ =gSharedMem + 0x19348
	strb r4, [r6, 0x5]
	ldr r5, _080B2928 @ =gContestMons
	lsls r4, 6
	adds r0, r4, r5
	ldrh r0, [r0]
	bl sub_80B2778
	strh r0, [r6]
	adds r0, r5, 0
	adds r0, 0x38
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [r6, 0x8]
	adds r5, 0x3C
	adds r4, r5
	ldr r0, [r4]
	str r0, [r6, 0xC]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B2924: .4byte gSharedMem + 0x19348
_080B2928: .4byte gContestMons
	thumb_func_end sub_80B28F0

	thumb_func_start sub_80B292C
sub_80B292C: @ 80B292C
	push {lr}
	ldr r0, _080B2958 @ =SpriteCallbackDummy
	bl CreateInvisibleSpriteWithCallback
	ldr r1, _080B295C @ =gObjectBankIDs
	strb r0, [r1, 0x3]
	ldr r0, _080B2960 @ =gBankTarget
	ldrb r0, [r0]
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _080B2964 @ =gSprites
	adds r0, r1
	bl InitSpriteAffineAnim
	bl sub_80B2968
	pop {r0}
	bx r0
	.align 2, 0
_080B2958: .4byte SpriteCallbackDummy
_080B295C: .4byte gObjectBankIDs
_080B2960: .4byte gBankTarget
_080B2964: .4byte gSprites
	thumb_func_end sub_80B292C

	thumb_func_start sub_80B2968
sub_80B2968: @ 80B2968
	push {r4,lr}
	ldr r0, _080B29AC @ =gObjectBankIDs
	ldrb r0, [r0, 0x3]
	lsls r4, r0, 4
	adds r4, r0
	lsls r4, 2
	ldr r0, _080B29B0 @ =gSprites
	adds r4, r0
	movs r0, 0
	strh r0, [r4, 0x24]
	strh r0, [r4, 0x26]
	movs r0, 0x3
	movs r1, 0
	bl sub_8077ABC
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4, 0x20]
	movs r0, 0x3
	movs r1, 0x1
	bl sub_8077ABC
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4, 0x22]
	adds r4, 0x3E
	ldrb r0, [r4]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B29AC: .4byte gObjectBankIDs
_080B29B0: .4byte gSprites
	thumb_func_end sub_80B2968

	thumb_func_start sub_80B29B4
sub_80B29B4: @ 80B29B4
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r2, _080B29D4 @ =gBattleMoves
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrb r0, [r1, 0x6]
	cmp r0, 0x20
	bhi _080B2A6C
	lsls r0, 2
	ldr r1, _080B29D8 @ =_080B29DC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B29D4: .4byte gBattleMoves
_080B29D8: .4byte _080B29DC
	.align 2, 0
_080B29DC:
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A60
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A60
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
	.4byte _080B2A6C
_080B2A60:
	ldr r1, _080B2A68 @ =gBankTarget
	movs r0, 0x2
	b _080B2A70
	.align 2, 0
_080B2A68: .4byte gBankTarget
_080B2A6C:
	ldr r1, _080B2A78 @ =gBankTarget
	movs r0, 0x3
_080B2A70:
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080B2A78: .4byte gBankTarget
	thumb_func_end sub_80B29B4

	thumb_func_start sub_80B2A7C
sub_80B2A7C: @ 80B2A7C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 24
	lsrs r7, r0, 24
	movs r6, 0
	ldr r1, _080B2AC8 @ =gUnknown_02038690
	ldrb r0, [r1]
	cmp r0, 0
	beq _080B2AB6
_080B2AA8:
	adds r6, 0x1
	cmp r6, 0x2
	bgt _080B2AB6
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _080B2AA8
_080B2AB6:
	mov r0, r9
	cmp r0, 0xFF
	bne _080B2AD0
	ldr r0, _080B2ACC @ =gContestPlayerMonIndex
	ldrb r0, [r0]
	cmp r6, r0
	beq _080B2AD0
	movs r0, 0
	b _080B2C38
	.align 2, 0
_080B2AC8: .4byte gUnknown_02038690
_080B2ACC: .4byte gContestPlayerMonIndex
_080B2AD0:
	ldr r0, _080B2AE4 @ =gScriptContestCategory
	ldrh r0, [r0]
	cmp r0, 0x4
	bhi _080B2B16
	lsls r0, 2
	ldr r1, _080B2AE8 @ =_080B2AEC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B2AE4: .4byte gScriptContestCategory
_080B2AE8: .4byte _080B2AEC
	.align 2, 0
_080B2AEC:
	.4byte _080B2B16
	.4byte _080B2B00
	.4byte _080B2B04
	.4byte _080B2B08
	.4byte _080B2B0E
_080B2B00:
	adds r0, r7, 0x3
	b _080B2B12
_080B2B04:
	adds r0, r7, 0x6
	b _080B2B12
_080B2B08:
	adds r0, r7, 0
	adds r0, 0x9
	b _080B2B12
_080B2B0E:
	adds r0, r7, 0
	adds r0, 0xC
_080B2B12:
	lsls r0, 24
	lsrs r7, r0, 24
_080B2B16:
	mov r1, r9
	cmp r1, 0xFE
	beq _080B2BC4
	mov r0, r9
	movs r1, 0x1
	bl sub_80B2C4C
	adds r4, r0, 0
	lsls r4, 24
	ldr r2, _080B2B98 @ =gSaveBlock1
	lsrs r4, 19
	ldr r0, _080B2B9C @ =0x00002dfc
	adds r1, r2, r0
	adds r1, r4, r1
	ldr r5, _080B2BA0 @ =gContestMons
	lsls r6, 6
	adds r0, r5, 0
	adds r0, 0x38
	adds r0, r6, r0
	ldr r0, [r0]
	str r0, [r1]
	adds r1, r4, r2
	mov r8, r1
	adds r0, r6, r5
	ldrh r1, [r0]
	ldr r0, _080B2BA4 @ =0x00002e04
	add r0, r8
	strh r1, [r0]
	movs r0, 0xB8
	lsls r0, 6
	adds r1, r2, r0
	adds r1, r4, r1
	adds r0, r5, 0
	adds r0, 0x3C
	adds r0, r6, r0
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _080B2BA8 @ =0x00002e07
	adds r0, r2, r1
	adds r0, r4, r0
	adds r1, r5, 0x2
	adds r1, r6, r1
	str r2, [sp]
	bl StringCopy
	ldr r2, [sp]
	ldr r0, _080B2BAC @ =0x00002e12
	adds r2, r0
	adds r4, r2
	adds r5, 0xD
	adds r6, r5
	adds r0, r4, 0
	adds r1, r6, 0
	bl StringCopy
	mov r1, r9
	cmp r1, 0xFF
	beq _080B2BB8
	ldr r0, _080B2BB0 @ =gScriptContestCategory
	ldrh r1, [r0]
	ldr r0, _080B2BB4 @ =0x00002e06
	add r0, r8
	strb r1, [r0]
	b _080B2C36
	.align 2, 0
_080B2B98: .4byte gSaveBlock1
_080B2B9C: .4byte 0x00002dfc
_080B2BA0: .4byte gContestMons
_080B2BA4: .4byte 0x00002e04
_080B2BA8: .4byte 0x00002e07
_080B2BAC: .4byte 0x00002e12
_080B2BB0: .4byte gScriptContestCategory
_080B2BB4: .4byte 0x00002e06
_080B2BB8:
	ldr r0, _080B2BC0 @ =0x00002e06
	add r0, r8
	strb r7, [r0]
	b _080B2C36
	.align 2, 0
_080B2BC0: .4byte 0x00002e06
_080B2BC4:
	ldr r5, _080B2C14 @ =gSharedMem + 0x15DE0
	ldr r2, _080B2C18 @ =gContestMons
	lsls r4, r6, 6
	adds r0, r2, 0
	adds r0, 0x38
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [r5]
	adds r0, r2, 0
	adds r0, 0x3C
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [r5, 0x4]
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r5, 0x8]
	adds r0, r5, 0
	adds r0, 0xB
	adds r1, r2, 0x2
	adds r1, r4, r1
	str r2, [sp]
	bl StringCopy
	ldr r0, _080B2C1C @ =gIsLinkContest
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	ldr r2, [sp]
	cmp r0, 0
	beq _080B2C24
	adds r0, r5, 0
	adds r0, 0x16
	lsls r1, r6, 3
	subs r1, r6
	lsls r1, 2
	ldr r2, _080B2C20 @ =gLinkPlayers + 0x8
	adds r1, r2
	bl StringCopy
	b _080B2C32
	.align 2, 0
_080B2C14: .4byte gSharedMem + 0x15DE0
_080B2C18: .4byte gContestMons
_080B2C1C: .4byte gIsLinkContest
_080B2C20: .4byte gLinkPlayers + 0x8
_080B2C24:
	adds r0, r5, 0
	adds r0, 0x16
	adds r1, r2, 0
	adds r1, 0xD
	adds r1, r4, r1
	bl StringCopy
_080B2C32:
	ldr r0, _080B2C48 @ =gSharedMem + 0x15DE0
	strb r7, [r0, 0xA]
_080B2C36:
	movs r0, 0x1
_080B2C38:
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B2C48: .4byte gSharedMem + 0x15DE0
	thumb_func_end sub_80B2A7C

	thumb_func_start sub_80B2C4C
sub_80B2C4C: @ 80B2C4C
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r0, 24
	adds r2, r0, 0
	lsls r1, 24
	lsrs r1, 24
	cmp r0, 0x2
	beq _080B2C6E
	cmp r0, 0x2
	ble _080B2C66
	cmp r0, 0x3
	beq _080B2CA0
	b _080B2CD4
_080B2C66:
	cmp r2, 0
	blt _080B2CD4
	adds r0, r2, 0
	b _080B2D16
_080B2C6E:
	cmp r1, 0
	beq _080B2C98
	movs r2, 0x4
	ldr r0, _080B2C9C @ =gSaveBlock1 + 0x2DFC
	adds r4, r0, 0
	adds r4, 0x60
	adds r3, r0, 0
	adds r3, 0x80
_080B2C7E:
	adds r1, r3, 0
	adds r0, r4, 0
	ldm r0!, {r5-r7}
	stm r1!, {r5-r7}
	ldm r0!, {r5-r7}
	stm r1!, {r5-r7}
	ldm r0!, {r5,r6}
	stm r1!, {r5,r6}
	subs r4, 0x20
	subs r3, 0x20
	subs r2, 0x1
	cmp r2, 0x2
	bgt _080B2C7E
_080B2C98:
	movs r0, 0x2
	b _080B2D16
	.align 2, 0
_080B2C9C: .4byte gSaveBlock1 + 0x2DFC
_080B2CA0:
	cmp r1, 0
	beq _080B2CCA
	movs r2, 0x7
	ldr r0, _080B2CD0 @ =gSaveBlock1 + 0x2DFC
	adds r4, r0, 0
	adds r4, 0xC0
	adds r3, r0, 0
	adds r3, 0xE0
_080B2CB0:
	adds r1, r3, 0
	adds r0, r4, 0
	ldm r0!, {r5-r7}
	stm r1!, {r5-r7}
	ldm r0!, {r5-r7}
	stm r1!, {r5-r7}
	ldm r0!, {r5,r7}
	stm r1!, {r5,r7}
	subs r4, 0x20
	subs r3, 0x20
	subs r2, 0x1
	cmp r2, 0x5
	bgt _080B2CB0
_080B2CCA:
	movs r0, 0x5
	b _080B2D16
	.align 2, 0
_080B2CD0: .4byte gSaveBlock1 + 0x2DFC
_080B2CD4:
	ldr r0, _080B2CE8 @ =gScriptContestCategory
	ldrh r0, [r0]
	cmp r0, 0x4
	bhi _080B2D14
	lsls r0, 2
	ldr r1, _080B2CEC @ =_080B2CF0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B2CE8: .4byte gScriptContestCategory
_080B2CEC: .4byte _080B2CF0
	.align 2, 0
_080B2CF0:
	.4byte _080B2D04
	.4byte _080B2D08
	.4byte _080B2D0C
	.4byte _080B2D10
	.4byte _080B2D14
_080B2D04:
	movs r0, 0x8
	b _080B2D16
_080B2D08:
	movs r0, 0x9
	b _080B2D16
_080B2D0C:
	movs r0, 0xA
	b _080B2D16
_080B2D10:
	movs r0, 0xB
	b _080B2D16
_080B2D14:
	movs r0, 0xC
_080B2D16:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_80B2C4C

	thumb_func_start sub_80B2D1C
sub_80B2D1C: @ 80B2D1C
	push {r4-r7,lr}
	ldr r0, _080B2D48 @ =gSaveBlock1
	ldr r4, _080B2D4C @ =gUnknown_083CC5D0
	ldr r1, _080B2D50 @ =0x00002dfc
	adds r3, r0, r1
	movs r2, 0x7
_080B2D28:
	adds r1, r3, 0
	adds r0, r4, 0
	ldm r0!, {r5-r7}
	stm r1!, {r5-r7}
	ldm r0!, {r5-r7}
	stm r1!, {r5-r7}
	ldm r0!, {r5,r6}
	stm r1!, {r5,r6}
	adds r4, 0x20
	adds r3, 0x20
	subs r2, 0x1
	cmp r2, 0
	bge _080B2D28
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B2D48: .4byte gSaveBlock1
_080B2D4C: .4byte gUnknown_083CC5D0
_080B2D50: .4byte 0x00002dfc
	thumb_func_end sub_80B2D1C

	.align 2, 0 @ Don't pad with nop.
