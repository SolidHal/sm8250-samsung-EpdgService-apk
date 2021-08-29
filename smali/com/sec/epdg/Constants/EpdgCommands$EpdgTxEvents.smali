.class public Lcom/sec/epdg/Constants/EpdgCommands$EpdgTxEvents;
.super Ljava/lang/Object;
.source "EpdgCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/EpdgCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EpdgTxEvents"
.end annotation


# static fields
.field public static final APN_ATTACH_DNS_RETRY_RESPONSE:I = 0xc

.field public static final APN_ATTACH_REQ:I = 0x2

.field public static final APN_DETACH_REQ:I = 0x3

.field public static final APN_FORCE_DETACH_REQ:I = 0xf

.field public static final CALL_STATUS_CHANGE:I = 0x16

.field public static final DATA_RETRY_TIMER_EXPIRED:I = 0xd

.field public static final DELAYED_CHECK_HO_W2L:I = 0x11

.field public static final DPD_LATENCY:I = 0x14

.field public static final DPD_SUCCESS:I = 0x15

.field public static final HANDOVER_RESULT:I = 0x4

.field public static final INTERFACE_DOWN:I = 0xe

.field public static final INTERFACE_UP:I = 0x9

.field public static final INTERNAL_ATTACH_REQ:I = 0x3e8

.field public static final INTERNAL_DETACH_REQ:I = 0x3e9

.field public static final IPSEC_CONN_DISCONNECTED:I = 0x7

.field public static final IPSEC_CONN_FAIL:I = 0x6

.field public static final IPSEC_CONN_RESET:I = 0x8

.field public static final IPSEC_CONN_SUCCESS:I = 0x5

.field public static final PERIODIC_DPD_TIMER_EXPIRED:I = 0x10

.field public static final SM_TIMEOUT:I = 0xb

.field public static final START_HO_L2W:I = 0x0

.field public static final START_HO_W2L:I = 0x1

.field public static final WIFI_STATUS_CHANGED:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "event"    # I

    .line 121
    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add log for event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EPDGCommands]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "UNKNOWN"

    return-object v0

    .line 163
    :pswitch_0
    const-string v0, "CALL_STATUS_CHANGE"

    return-object v0

    .line 161
    :pswitch_1
    const-string v0, "DPD_SUCCESS"

    return-object v0

    .line 159
    :pswitch_2
    const-string v0, "DPD_LATENCY"

    return-object v0

    .line 157
    :pswitch_3
    const-string v0, "DELAYED_CHECK_HO_W2L"

    return-object v0

    .line 155
    :pswitch_4
    const-string v0, "PERIODIC_DPD_TIMER_EXPIRED"

    return-object v0

    .line 153
    :pswitch_5
    const-string v0, "APN_FORCE_DETACH_REQ"

    return-object v0

    .line 151
    :pswitch_6
    const-string v0, "INTERFACE_DOWN"

    return-object v0

    .line 149
    :pswitch_7
    const-string v0, "DATA_RETRY_TIMER_EXPIRED"

    return-object v0

    .line 147
    :pswitch_8
    const-string v0, "APN_ATTACH_DNS_RETRY_RESPONSE"

    return-object v0

    .line 145
    :pswitch_9
    const-string v0, "SM_TIMEOUT"

    return-object v0

    .line 143
    :pswitch_a
    const-string v0, "WIFI_STATUS_CHANGED"

    return-object v0

    .line 141
    :pswitch_b
    const-string v0, "INTERFACE_UP"

    return-object v0

    .line 139
    :pswitch_c
    const-string v0, "IPSEC_CONN_RESET"

    return-object v0

    .line 137
    :pswitch_d
    const-string v0, "IPSEC_CONN_DISCONNECTED"

    return-object v0

    .line 135
    :pswitch_e
    const-string v0, "IPSEC_CONN_FAIL"

    return-object v0

    .line 133
    :pswitch_f
    const-string v0, "IPSEC_CONN_SUCCESS"

    return-object v0

    .line 131
    :pswitch_10
    const-string v0, "HANDOVER_RESULT"

    return-object v0

    .line 129
    :pswitch_11
    const-string v0, "APN_DETACH_REQ"

    return-object v0

    .line 127
    :pswitch_12
    const-string v0, "APN_ATTACH_REQ"

    return-object v0

    .line 125
    :pswitch_13
    const-string v0, "START_HO_W2L"

    return-object v0

    .line 123
    :pswitch_14
    const-string v0, "START_HO_L2W"

    return-object v0

    .line 167
    :cond_0
    const-string v0, "INTERNAL_DETACH_REQ"

    return-object v0

    .line 165
    :cond_1
    const-string v0, "INTERNAL_ATTACH_REQ"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
