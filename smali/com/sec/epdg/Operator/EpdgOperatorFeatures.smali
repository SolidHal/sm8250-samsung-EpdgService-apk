.class public Lcom/sec/epdg/Operator/EpdgOperatorFeatures;
.super Ljava/lang/Object;
.source "EpdgOperatorFeatures.java"


# static fields
.field private static mInstance:Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

.field private static mInstance2:Lcom/sec/epdg/Operator/EpdgOperatorFeatures;


# instance fields
.field public CALLDROP_NOTI:Z

.field public DELAY_HO_UNTIL_REGI_FINISHED:Z

.field public DELAY_L2W_AND_W2L:Z

.field public EMERGENCY_CALLBACK_MODE:Z

.field public ENHANCEDVOWIFI20:Z

.field public EPDG_SERVER_ID_FROM_SIM:Z

.field public INTERNAL_ENTITLEMENT_CHECK:Z

.field public KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

.field public LTE_IDLE_PROFILING:Z

.field public LTE_PROFILING:Z

.field public NO_WFC_PREFERRED_MODE:Z

.field public PDPD_CHECK_TIMEOUT:I

.field public SEPARATE_VIDEO_FROM_VOWIFI:Z

.field public SUPPORTWEAKSIGNALHO:Z

.field public SUPPORT_DOWNGRADED_VIDEO_CALL:Z

.field public SUPPORT_IMSI_FROM_IMPI:Z

.field public SUPPORT_JITTER_W2L_HANDOVER:Z

.field public SUPPORT_MULTIPLE_EPDGIP:Z

.field public SUPPORT_ROAMING_HO:Z

.field public SUPPORT_STAND_ALONE_SMSIP:Z

.field public SUPPORT_VOWIFI_PROVISIONING:Z

.field public SUPPORT_WIFI_OVER_IPME:Z

.field public VOWIFI_BLOCKLIST_BLOCKING:Z

.field public WIFI_THRESHOLD_BASED_HO:Z

.field private mPhoneId:I


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .param p1, "phoneid"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_MULTIPLE_EPDGIP:Z

    .line 24
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->INTERNAL_ENTITLEMENT_CHECK:Z

    .line 34
    iput-boolean v1, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->NO_WFC_PREFERRED_MODE:Z

    .line 36
    iput-boolean v1, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_JITTER_W2L_HANDOVER:Z

    .line 37
    iput-boolean v1, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_ROAMING_HO:Z

    .line 38
    iput-boolean v1, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_STAND_ALONE_SMSIP:Z

    .line 41
    iput-boolean v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORTWEAKSIGNALHO:Z

    .line 42
    iput-boolean v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->ENHANCEDVOWIFI20:Z

    .line 43
    iput-boolean v1, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->CALLDROP_NOTI:Z

    .line 45
    iput-boolean v1, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->EPDG_SERVER_ID_FROM_SIM:Z

    .line 52
    iput p1, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->mPhoneId:I

    .line 53
    return-void
.end method

.method private InternalEntitlementOperators(Ljava/lang/String;)Z
    .locals 1
    .param p1, "operator"    # Ljava/lang/String;

    .line 168
    const-string v0, "RWC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FMC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VTR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    const-string v0, "GLW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BMC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VMC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    const-string v0, "TLS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 171
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static createInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;
    .locals 1
    .param p0, "phoneid"    # I

    .line 56
    if-nez p0, :cond_0

    .line 57
    new-instance v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    invoke-direct {v0, p0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;-><init>(I)V

    sput-object v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->mInstance:Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    .line 58
    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    invoke-direct {v0, p0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;-><init>(I)V

    sput-object v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->mInstance2:Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    .line 61
    return-object v0
.end method

.method public static deinitialize(I)V
    .locals 1
    .param p0, "phoneId"    # I

    .line 177
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 178
    sput-object v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->mInstance:Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    goto :goto_0

    .line 180
    :cond_0
    sput-object v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->mInstance2:Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    .line 182
    :goto_0
    return-void
.end method

.method public static getInstance(I)Lcom/sec/epdg/Operator/EpdgOperatorFeatures;
    .locals 1
    .param p0, "phoneid"    # I

    .line 66
    if-nez p0, :cond_0

    .line 67
    sget-object v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->mInstance:Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    return-object v0

    .line 69
    :cond_0
    sget-object v0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->mInstance2:Lcom/sec/epdg/Operator/EpdgOperatorFeatures;

    return-object v0
.end method

.method private overrideOperatorSpecificFeatures()V
    .locals 4

    .line 107
    iget v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/Operator/EpdgOperator;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "operator":Ljava/lang/String;
    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_b

    const-string v1, "TMK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 111
    :cond_0
    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    iput-boolean v2, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->DELAY_L2W_AND_W2L:Z

    .line 113
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 114
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 115
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->EMERGENCY_CALLBACK_MODE:Z

    .line 116
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_VOWIFI_PROVISIONING:Z

    .line 117
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_IMSI_FROM_IMPI:Z

    .line 118
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->WIFI_THRESHOLD_BASED_HO:Z

    .line 119
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 120
    iput-boolean v2, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_MULTIPLE_EPDGIP:Z

    .line 121
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->NO_WFC_PREFERRED_MODE:Z

    .line 122
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_STAND_ALONE_SMSIP:Z

    .line 123
    iput-boolean v2, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_ROAMING_HO:Z

    .line 124
    iput-boolean v2, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORTWEAKSIGNALHO:Z

    goto/16 :goto_3

    .line 125
    :cond_1
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 127
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->WIFI_THRESHOLD_BASED_HO:Z

    .line 128
    iput-boolean v2, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_MULTIPLE_EPDGIP:Z

    .line 129
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_WIFI_OVER_IPME:Z

    .line 130
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 131
    iput-boolean v2, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->ENHANCEDVOWIFI20:Z

    .line 132
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_STAND_ALONE_SMSIP:Z

    .line 133
    iput-boolean v2, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_ROAMING_HO:Z

    .line 134
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->CALLDROP_NOTI:Z

    goto/16 :goto_3

    .line 135
    :cond_2
    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 136
    const-string v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 137
    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 138
    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    .line 146
    :cond_3
    const-string v1, "VOD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    const/16 v1, 0x1f

    iput v1, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->PDPD_CHECK_TIMEOUT:I

    .line 148
    iput-boolean v2, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_MULTIPLE_EPDGIP:Z

    goto/16 :goto_3

    .line 149
    :cond_4
    const-string v1, "RJIL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 150
    iput-boolean v2, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_PROFILING:Z

    .line 151
    iput-boolean v2, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_IDLE_PROFILING:Z

    .line 152
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_IMSI_FROM_IMPI:Z

    goto :goto_3

    .line 153
    :cond_5
    const-string v1, "DTM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 154
    const-string v1, "ELS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    .line 156
    :cond_6
    const-string v1, "ATC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 157
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_IMSI_FROM_IMPI:Z

    .line 158
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->EPDG_SERVER_ID_FROM_SIM:Z

    goto :goto_3

    .line 159
    :cond_7
    invoke-direct {p0, v0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->InternalEntitlementOperators(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 160
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->INTERNAL_ENTITLEMENT_CHECK:Z

    goto :goto_3

    .line 161
    :cond_8
    iget v1, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isStgCdmaOperators()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 162
    iput-boolean v2, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORTWEAKSIGNALHO:Z

    .line 163
    iget v1, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/Operator/EpdgOperator;->isOperatorUscc()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_ROAMING_HO:Z

    goto :goto_3

    .line 155
    :cond_9
    :goto_0
    iput-boolean v2, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_ROAMING_HO:Z

    goto :goto_3

    .line 139
    :cond_a
    :goto_1
    iput-boolean v2, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->DELAY_L2W_AND_W2L:Z

    .line 140
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_VOWIFI_PROVISIONING:Z

    .line 141
    const/16 v1, 0x9

    iput v1, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->PDPD_CHECK_TIMEOUT:I

    .line 142
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->VOWIFI_BLOCKLIST_BLOCKING:Z

    .line 143
    iput-boolean v2, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_MULTIPLE_EPDGIP:Z

    .line 144
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_STAND_ALONE_SMSIP:Z

    .line 145
    iput-boolean v2, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORTWEAKSIGNALHO:Z

    goto :goto_3

    .line 109
    :cond_b
    :goto_2
    iput-boolean v2, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_ROAMING_HO:Z

    .line 110
    iput-boolean v3, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->CALLDROP_NOTI:Z

    .line 165
    :cond_c
    :goto_3
    return-void
.end method

.method private setDefaultValues()V
    .locals 4

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->DELAY_L2W_AND_W2L:Z

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_MULTIPLE_EPDGIP:Z

    .line 81
    iput-boolean v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 82
    iput-boolean v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 83
    iput-boolean v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->EMERGENCY_CALLBACK_MODE:Z

    .line 84
    iput-boolean v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_VOWIFI_PROVISIONING:Z

    .line 85
    iput-boolean v1, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_PROFILING:Z

    .line 86
    iput-boolean v1, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->LTE_IDLE_PROFILING:Z

    .line 87
    iput-boolean v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->INTERNAL_ENTITLEMENT_CHECK:Z

    .line 88
    iput-boolean v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_IMSI_FROM_IMPI:Z

    .line 89
    iput-boolean v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->WIFI_THRESHOLD_BASED_HO:Z

    .line 90
    const/4 v2, 0x5

    iput v2, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->PDPD_CHECK_TIMEOUT:I

    .line 91
    iput-boolean v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->VOWIFI_BLOCKLIST_BLOCKING:Z

    .line 92
    iput-boolean v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 93
    iput-boolean v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_WIFI_OVER_IPME:Z

    .line 94
    iput-boolean v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 95
    iput-boolean v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->NO_WFC_PREFERRED_MODE:Z

    .line 96
    iput-boolean v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_JITTER_W2L_HANDOVER:Z

    .line 97
    iput-boolean v1, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_ROAMING_HO:Z

    .line 98
    iput-boolean v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORT_STAND_ALONE_SMSIP:Z

    .line 100
    const-string v2, "ro.telephony.iwlan_operation_mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "legacy"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->SUPPORTWEAKSIGNALHO:Z

    .line 101
    iput-boolean v1, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->ENHANCEDVOWIFI20:Z

    .line 102
    iput-boolean v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->CALLDROP_NOTI:Z

    .line 103
    iput-boolean v0, p0, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->EPDG_SERVER_ID_FROM_SIM:Z

    .line 104
    return-void
.end method


# virtual methods
.method public Update()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->setDefaultValues()V

    .line 75
    invoke-direct {p0}, Lcom/sec/epdg/Operator/EpdgOperatorFeatures;->overrideOperatorSpecificFeatures()V

    .line 76
    return-void
.end method
