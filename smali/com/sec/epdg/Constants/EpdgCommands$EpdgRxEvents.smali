.class public Lcom/sec/epdg/Constants/EpdgCommands$EpdgRxEvents;
.super Ljava/lang/Object;
.source "EpdgCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/EpdgCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EpdgRxEvents"
.end annotation


# static fields
.field public static final CALL_STATUS_CHANGE:I = 0x3e

.field public static final CALL_STATUS_CHANGE_FOR_DUALIMS:I = 0x3ea

.field public static final CHECK_MOBILE_ATTACH_DURING_E911:I = 0x3ed

.field public static final CHECK_TEPDG_TIMER:I = 0x68

.field public static final DATA_RETRY_TIMER_EXPIRED:I = 0x21

.field public static final DEFAULT_DATA_SUB_CHANGE:I = 0x53

.field public static final DELAYED_FOR_IKE_INFOR:I = 0x54

.field public static final DEVICE_CONFIG_UPDATED:I = 0x3ee

.field public static final DPD_SUCCESS:I = 0x5a

.field public static final EPDG_IMS_READY:I = 0x4c

.field public static final EPDG_READINESS_CRITERION_CHANGED:I = 0x3f5

.field public static final EPDG_SETTINGS_READ:I = 0x1d

.field public static final EPDG_WFCPROFILE_READ:I = 0x4b

.field public static final ESP_SEQ_CHECK:I = 0x65

.field public static final FRAMEWORK_HO_START:I = 0x3ef

.field public static final HANDLE_DNS_QUERY_REQUEST:I = 0x34

.field public static final HANDLE_FQDN_QUERY_FAILED:I = 0x36

.field public static final HANDLE_FQDN_QUERY_RETRY:I = 0x37

.field public static final IMS_REG_STATUS_CHANGE:I = 0x40

.field public static final IMS_SERVICE_UP:I = 0x3ec

.field public static final INTERNAL_ATTACH_REQ:I = 0x3e8

.field public static final INTERNAL_DETACH_REQ:I = 0x3e9

.field public static final IPME_STATUS_CHANGE:I = 0x4e

.field public static final IPSEC_CONNECTED:I = 0x2d

.field public static final IPSEC_CONNECTION_RESET:I = 0x31

.field public static final IPSEC_CONNECTION_SETUP_FAILURE:I = 0x30

.field public static final IPSEC_CONNECT_INIT:I = 0x33

.field public static final IPSEC_DISCONNECTED:I = 0x2e

.field public static final IPSEC_ERROR:I = 0x32

.field public static final IPSEC_PEER_DISCONNECTED:I = 0x2f

.field public static final MAPCON_CHANGED:I = 0x1c

.field public static final MOBIKE_ONGOING:I = 0x6a

.field public static final NOTIFY_EPDG_STATUS_TO_HANDOVER_W2M:I = 0x56

.field public static final NOTIFY_REGISTRANTS:I = 0x1e

.field public static final ON_DB_SYNC_FINISHED:I = 0x3f2

.field public static final PDU_SESSION_ID_UPDATE:I = 0x3f0

.field public static final PERFORM_EPDG_READINESS_OPERATION:I = 0x3f4

.field public static final PERIODIC_DNS_TIMER_EXPIRED:I = 0x52

.field public static final PERIODIC_DPD_TIMER_EXPIRED:I = 0x44

.field public static final QUALITY_CHECK_RESULT_W2L:I = 0x59

.field public static final READ_VOWIFI_SETTINGS_DB:I = 0x3f1

.field public static final RELEASECALL_EXFIRED:I = 0x67

.field public static final RETRY_L2W_IF_REQUIRED:I = 0x1f

.field public static final RIL_CONNECT_REQ:I = 0x2b

.field public static final RIL_DISCONNECT_REQ:I = 0x2c

.field public static final RIL_EPDG_STATUS_QUERY:I = 0x35

.field public static final RIL_HANDOVER_RESULT:I = 0x2a

.field public static final RIL_IIL_SSAC_INFO_UPDATE:I = 0x4a

.field public static final RTP_PACKET_LOSS:I = 0x58

.field public static final SCREEN_OFF:I = 0x5e

.field public static final SCREEN_ON:I = 0x5f

.field public static final SEND_EPDG_DEREGISTER:I = 0x47

.field public static final SEND_EPDG_NOTAVAILABLE_FOR_DNS_FAILURE:I = 0x51

.field public static final SEND_EPDG_NOTAVAILABLE_FOR_IKE_ERROR:I = 0x66

.field public static final SEND_EPDG_NOTAVAILABLE_FOR_ONDEMAND_FAILURE:I = 0x25

.field public static final SEND_IPSEC_RESULT_TO_TEST_APP:I = 0x6b

.field public static final SERVICE_STOP_CHECK:I = 0x3f3

.field public static final SIM_MOBILITY_CHANGE:I = 0x69

.field public static final SIM_MOBILITY_CHANGE_FOR_SYNC:I = 0x6c

.field public static final SIM_STATUS_CHANGE:I = 0x3eb

.field public static final SM_DISCONNECT_REQ:I = 0x29

.field public static final SM_ENABLE_EPDG_FAILURE:I = 0x23

.field public static final SM_TRANSITIONTO:I = 0x28

.field public static final SM_TRIGGER_HO:I = 0x22

.field public static final SM_UPDATE_CONN_STATUS:I = 0x26

.field public static final START_TEPDG_LTE_TIMER:I = 0x5d

.field public static final START_TIMER_TEPDGHODELAY:I = 0x3d

.field public static final TIMER_TEPDGCS_EXPIRED:I = 0x61

.field public static final TIMER_TEPDGHODELAYWIFI_EXPIRED:I = 0x3a

.field public static final TIMER_TEPDGHODELAY_EXPIRED:I = 0x3c

.field public static final TIMER_TEPDGLTE_EXPIRED:I = 0x39

.field public static final TIMER_TEPDG_CALL_POPUP_EXPIRED:I = 0x55

.field public static final TIMER_TEPDG_EXPIRED:I = 0x38

.field public static final TIMER_TEPDG_LTEMEASUREMENT_EXPIRED:I = 0x5b

.field public static final TIMER_TEPDG_RTP_HANDIN_RETRY:I = 0x60

.field public static final TIMER_TEPDG_WIFIMEASUREMENT_EXPIRED:I = 0x5c

.field public static final TIMER_TEPDG_WIFI_IPCONFIG_EXPIRED:I = 0x4d

.field public static final UPDATE_L2W_HANDOVER_DONE_WITHOUT_TC_FAIL:I = 0x62

.field public static final UPDATE_L2W_HANDOVER_FAIL_BY_NO_RESPONSE:I = 0x63

.field public static final UPDATE_L2W_HANDOVER_FAIL_BY_THROTTLE_STATE:I = 0x64

.field public static final UPDATE_NET_REGIST:I = 0x50

.field public static final UPDATE_WIFI_RSSI_TO_MAINTAIN_IWLAN:I = 0x57

.field public static final VOLTE_PROVISIONING_CHANGED:I = 0x42

.field public static final VOLTE_SETTING_CHANGED:I = 0x3f

.field public static final VOPS_STATUS_CHANGED:I = 0x45

.field public static final VOWIFI_PROVISIONING_CHANGED:I = 0x43


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "event"    # I

    .line 268
    const/16 v0, 0x25

    if-eq p0, v0, :cond_2

    const/16 v0, 0x26

    if-eq p0, v0, :cond_1

    const/16 v0, 0x47

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add log for event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EPDGCommands]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v0, "UNKNOWN"

    return-object v0

    .line 448
    :pswitch_0
    const-string v0, "EPDG_READINESS_CRITERION_CHANGED"

    return-object v0

    .line 446
    :pswitch_1
    const-string v0, "PERFORM_EPDG_READINESS_OPERATION"

    return-object v0

    .line 444
    :pswitch_2
    const-string v0, "SERVICE_STOP_CHECK"

    return-object v0

    .line 442
    :pswitch_3
    const-string v0, "ON_DB_SYNC_FINISHED"

    return-object v0

    .line 440
    :pswitch_4
    const-string v0, "READ_VOWIFI_SETTINGS_DB"

    return-object v0

    .line 432
    :pswitch_5
    const-string v0, "PDU_SESSION_ID_UPDATE"

    return-object v0

    .line 438
    :pswitch_6
    const-string v0, "FRAMEWORK_HO_START"

    return-object v0

    .line 428
    :pswitch_7
    const-string v0, "DEVICE_CONFIG_UPDATED"

    return-object v0

    .line 426
    :pswitch_8
    const-string v0, "CHECK_MOBILE_ATTACH_DURING_E911"

    return-object v0

    .line 424
    :pswitch_9
    const-string v0, "IMS_SERVICE_UP"

    return-object v0

    .line 422
    :pswitch_a
    const-string v0, "SIM_STATUS_CHANGE"

    return-object v0

    .line 420
    :pswitch_b
    const-string v0, "CALL_STATUS_CHANGE_FOR_DUALIMS"

    return-object v0

    .line 418
    :pswitch_c
    const-string v0, "INTERNAL_DETACH_REQ"

    return-object v0

    .line 416
    :pswitch_d
    const-string v0, "INTERNAL_ATTACH_REQ"

    return-object v0

    .line 436
    :pswitch_e
    const-string v0, "SIM_MOBILITY_CHANGE_FOR_SYNC"

    return-object v0

    .line 434
    :pswitch_f
    const-string v0, "SEND_IPSEC_RESULT_TO_TEST_APP"

    return-object v0

    .line 430
    :pswitch_10
    const-string v0, "MOBIKE_ONGOING"

    return-object v0

    .line 414
    :pswitch_11
    const-string v0, "SIM_MOBILITY_CHANGE"

    return-object v0

    .line 412
    :pswitch_12
    const-string v0, "CHECK_TEPDG_TIMER"

    return-object v0

    .line 410
    :pswitch_13
    const-string v0, "RELEASECALL_EXFIRED"

    return-object v0

    .line 408
    :pswitch_14
    const-string v0, "SEND_EPDG_NOTAVAILABLE_FOR_IKE_ERROR"

    return-object v0

    .line 406
    :pswitch_15
    const-string v0, "ESP_SEQ_CHECK"

    return-object v0

    .line 404
    :pswitch_16
    const-string v0, "UPDATE_L2W_HANDOVER_FAIL_BY_THROTTLE_STATE"

    return-object v0

    .line 402
    :pswitch_17
    const-string v0, "UPDATE_L2W_HANDOVER_FAIL_BY_NO_RESPONSE"

    return-object v0

    .line 400
    :pswitch_18
    const-string v0, "UPDATE_L2W_HANDOVER_DONE_WITHOUT_TC_FAIL"

    return-object v0

    .line 398
    :pswitch_19
    const-string v0, "TIMER_TEPDGCS_EXPIRED"

    return-object v0

    .line 396
    :pswitch_1a
    const-string v0, "TIMER_TEPDG_RTP_HANDIN_RETRY"

    return-object v0

    .line 394
    :pswitch_1b
    const-string v0, "SCREEN_ON"

    return-object v0

    .line 392
    :pswitch_1c
    const-string v0, "SCREEN_OFF"

    return-object v0

    .line 388
    :pswitch_1d
    const-string v0, "START_TEPDG_LTE_TIMER"

    return-object v0

    .line 386
    :pswitch_1e
    const-string v0, "TIMER_TEPDG_WIFIMEASUREMENT_EXPIRED"

    return-object v0

    .line 384
    :pswitch_1f
    const-string v0, "TIMER_TEPDG_LTEMEASUREMENT_EXPIRED"

    return-object v0

    .line 376
    :pswitch_20
    const-string v0, "DPD_SUCCESS"

    return-object v0

    .line 374
    :pswitch_21
    const-string v0, "QUALITY_CHECK_RESULT_W2L"

    return-object v0

    .line 372
    :pswitch_22
    const-string v0, "RTP_PACKET_LOSS"

    return-object v0

    .line 382
    :pswitch_23
    const-string v0, "UPDATE_WIFI_RSSI_TO_MAINTAIN_IWLAN"

    return-object v0

    .line 380
    :pswitch_24
    const-string v0, "NOTIFY_EPDG_STATUS_TO_HANDOVER_W2M"

    return-object v0

    .line 378
    :pswitch_25
    const-string v0, "TIMER_TEPDG_CALL_POPUP_EXPIRED"

    return-object v0

    .line 370
    :pswitch_26
    const-string v0, "DELAYED_FOR_IKE_INFOR"

    return-object v0

    .line 368
    :pswitch_27
    const-string v0, "DEFAULT_DATA_SUB_CHANGE"

    return-object v0

    .line 366
    :pswitch_28
    const-string v0, "PERIODIC_DNS_TIMER_EXPIRED"

    return-object v0

    .line 364
    :pswitch_29
    const-string v0, "SEND_EPDG_NOTAVAILABLE_FOR_DNS_FAILURE"

    return-object v0

    .line 362
    :pswitch_2a
    const-string v0, "UPDATE_NET_REGIST"

    return-object v0

    .line 334
    :pswitch_2b
    const-string v0, "IPME_STATUS_CHANGE"

    return-object v0

    .line 360
    :pswitch_2c
    const-string v0, "TIMER_TEPDG_WIFI_IPCONFIG_EXPIRED"

    return-object v0

    .line 358
    :pswitch_2d
    const-string v0, "EPDG_IMS_READY"

    return-object v0

    .line 356
    :pswitch_2e
    const-string v0, "EPDG_WFCPROFILE_READ"

    return-object v0

    .line 354
    :pswitch_2f
    const-string v0, "RIL_IIL_SSAC_INFO_UPDATE"

    return-object v0

    .line 348
    :pswitch_30
    const-string v0, "VOPS_STATUS_CHANGED"

    return-object v0

    .line 342
    :pswitch_31
    const-string v0, "PERIODIC_DPD_TIMER_EXPIRED"

    return-object v0

    .line 346
    :pswitch_32
    const-string v0, "VOWIFI_PROVISIONING_CHANGED"

    return-object v0

    .line 344
    :pswitch_33
    const-string v0, "VOLTE_PROVISIONING_CHANGED"

    return-object v0

    .line 338
    :pswitch_34
    const-string v0, "IMS_REG_STATUS_CHANGE"

    return-object v0

    .line 336
    :pswitch_35
    const-string v0, "VOLTE_SETTING_CHANGED"

    return-object v0

    .line 332
    :pswitch_36
    const-string v0, "CALL_STATUS_CHANGE"

    return-object v0

    .line 330
    :pswitch_37
    const-string v0, "START_TIMER_TEPDGHODELAY"

    return-object v0

    .line 328
    :pswitch_38
    const-string v0, "TIMER_TEPDGHODELAY_EXPIRED"

    return-object v0

    .line 324
    :pswitch_39
    const-string v0, "TIMER_TEPDGHODELAYWIFI_EXPIRED"

    return-object v0

    .line 322
    :pswitch_3a
    const-string v0, "TIMER_TEPDGLTE_EXPIRED"

    return-object v0

    .line 320
    :pswitch_3b
    const-string v0, "TIMER_TEPDG_EXPIRED"

    return-object v0

    .line 318
    :pswitch_3c
    const-string v0, "HANDLE_FQDN_QUERY_RETRY"

    return-object v0

    .line 316
    :pswitch_3d
    const-string v0, "HANDLE_FQDN_QUERY_FAILED"

    return-object v0

    .line 314
    :pswitch_3e
    const-string v0, "RIL_EPDG_STATUS_QUERY"

    return-object v0

    .line 310
    :pswitch_3f
    const-string v0, "HANDLE_DNS_QUERY_REQUEST"

    return-object v0

    .line 308
    :pswitch_40
    const-string v0, "IPSEC_CONNECT_INIT"

    return-object v0

    .line 306
    :pswitch_41
    const-string v0, "IPSEC_ERROR"

    return-object v0

    .line 304
    :pswitch_42
    const-string v0, "IPSEC_CONNECTION_RESET"

    return-object v0

    .line 302
    :pswitch_43
    const-string v0, "IPSEC_CONNECTION_SETUP_FAILURE"

    return-object v0

    .line 300
    :pswitch_44
    const-string v0, "IPSEC_PEER_DISCONNECTED"

    return-object v0

    .line 298
    :pswitch_45
    const-string v0, "IPSEC_DISCONNECTED"

    return-object v0

    .line 296
    :pswitch_46
    const-string v0, "IPSEC_CONNECTED"

    return-object v0

    .line 294
    :pswitch_47
    const-string v0, "RIL_DISCONNECT_REQ"

    return-object v0

    .line 292
    :pswitch_48
    const-string v0, "RIL_CONNECT_REQ"

    return-object v0

    .line 290
    :pswitch_49
    const-string v0, "RIL_HANDOVER_RESULT"

    return-object v0

    .line 280
    :pswitch_4a
    const-string v0, "SM_DISCONNECT_REQ"

    return-object v0

    .line 278
    :pswitch_4b
    const-string v0, "SM_TRANSITIONTO"

    return-object v0

    .line 272
    :pswitch_4c
    const-string v0, "SM_ENABLE_EPDG_FAILURE"

    return-object v0

    .line 270
    :pswitch_4d
    const-string v0, "SM_TRIGGER_HO"

    return-object v0

    .line 288
    :pswitch_4e
    const-string v0, "DATA_RETRY_TIMER_EXPIRED"

    return-object v0

    .line 286
    :pswitch_4f
    const-string v0, "RETRY_L2W_IF_REQUIRED"

    return-object v0

    .line 282
    :pswitch_50
    const-string v0, "NOTIFY_REGISTRANTS"

    return-object v0

    .line 284
    :pswitch_51
    const-string v0, "EPDG_SETTINGS_READ"

    return-object v0

    .line 312
    :pswitch_52
    const-string v0, "MAPCON_CHANGED"

    return-object v0

    .line 352
    :cond_0
    const-string v0, "SEND_EPDG_DEREGISTER"

    return-object v0

    .line 276
    :cond_1
    const-string v0, "SM_UPDATE_CONN_STATUS"

    return-object v0

    .line 274
    :cond_2
    const-string v0, "SEND_EPDG_NOTAVAILABLE_FOR_ONDEMAND_FAILURE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3c
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x42
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4a
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x50
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x3e8
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
