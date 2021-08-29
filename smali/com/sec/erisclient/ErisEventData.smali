.class public Lcom/sec/erisclient/ErisEventData;
.super Ljava/lang/Object;
.source "ErisEventData.java"


# instance fields
.field backoffTimer:I

.field esp_enc_alg:Ljava/lang/String;

.field esp_integ_alg:Ljava/lang/String;

.field esp_kai:Ljava/lang/String;

.field esp_kar:Ljava/lang/String;

.field esp_kei:Ljava/lang/String;

.field esp_ker:Ljava/lang/String;

.field esp_spii:Ljava/lang/String;

.field esp_spir:Ljava/lang/String;

.field ikeError:I

.field ike_enc_alg:Ljava/lang/String;

.field ike_integ_alg:Ljava/lang/String;

.field ike_skai:Ljava/lang/String;

.field ike_skar:Ljava/lang/String;

.field ike_skei:Ljava/lang/String;

.field ike_sker:Ljava/lang/String;

.field ike_spii:Ljava/lang/String;

.field ike_spir:Ljava/lang/String;

.field private mConnection:Lcom/sec/erisclient/IPSecConnection;

.field private mError:Lcom/sec/erisclient/ErisError;

.field max_seq:I

.field min_seq:I

.field n1_mode_plmn_id:Ljava/lang/String;

.field n1_mode_snssai:Ljava/lang/String;

.field total_rx:I


# direct methods
.method public constructor <init>(Lcom/sec/erisclient/IPSecConnection;Lcom/sec/erisclient/ErisError;I)V
    .locals 1
    .param p1, "connection"    # Lcom/sec/erisclient/IPSecConnection;
    .param p2, "error"    # Lcom/sec/erisclient/ErisError;
    .param p3, "ikeError"    # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/sec/erisclient/ErisEventData;->mError:Lcom/sec/erisclient/ErisError;

    .line 19
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->mConnection:Lcom/sec/erisclient/IPSecConnection;

    .line 20
    iput p3, p0, Lcom/sec/erisclient/ErisEventData;->ikeError:I

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/erisclient/ErisEventData;->backoffTimer:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/erisclient/ErisEventData;->n1_mode_snssai:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/sec/erisclient/ErisEventData;->n1_mode_plmn_id:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getBackoffTimer()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/sec/erisclient/ErisEventData;->backoffTimer:I

    return v0
.end method

.method public getConnection()Lcom/sec/erisclient/IPSecConnection;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->mConnection:Lcom/sec/erisclient/IPSecConnection;

    return-object v0
.end method

.method public getError()Lcom/sec/erisclient/ErisError;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->mError:Lcom/sec/erisclient/ErisError;

    return-object v0
.end method

.method public getEspAA()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->esp_integ_alg:Ljava/lang/String;

    return-object v0
.end method

.method public getEspAKi()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->esp_kai:Ljava/lang/String;

    return-object v0
.end method

.method public getEspAKr()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->esp_kar:Ljava/lang/String;

    return-object v0
.end method

.method public getEspEA()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->esp_enc_alg:Ljava/lang/String;

    return-object v0
.end method

.method public getEspEKi()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->esp_kei:Ljava/lang/String;

    return-object v0
.end method

.method public getEspEKr()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->esp_ker:Ljava/lang/String;

    return-object v0
.end method

.method public getEspSpiI()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->esp_spii:Ljava/lang/String;

    return-object v0
.end method

.method public getEspSpiR()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->esp_spir:Ljava/lang/String;

    return-object v0
.end method

.method public getIkeEA()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->ike_enc_alg:Ljava/lang/String;

    return-object v0
.end method

.method public getIkeErrorValue()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/sec/erisclient/ErisEventData;->ikeError:I

    return v0
.end method

.method public getIkeIA()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->ike_integ_alg:Ljava/lang/String;

    return-object v0
.end method

.method public getIkeSKai()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->ike_skai:Ljava/lang/String;

    return-object v0
.end method

.method public getIkeSKar()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->ike_skar:Ljava/lang/String;

    return-object v0
.end method

.method public getIkeSKei()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->ike_skei:Ljava/lang/String;

    return-object v0
.end method

.method public getIkeSKer()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->ike_sker:Ljava/lang/String;

    return-object v0
.end method

.method public getIkeSpiI()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->ike_spii:Ljava/lang/String;

    return-object v0
.end method

.method public getIkeSpiR()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->ike_spir:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxEspSeq()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/sec/erisclient/ErisEventData;->max_seq:I

    return v0
.end method

.method public getMinEspSeq()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/sec/erisclient/ErisEventData;->min_seq:I

    return v0
.end method

.method public getPlmnIdValue()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->n1_mode_plmn_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSnssaiValue()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/sec/erisclient/ErisEventData;->n1_mode_snssai:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalRxPackets()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/sec/erisclient/ErisEventData;->total_rx:I

    return v0
.end method

.method protected setBackoffTimer(I)V
    .locals 0
    .param p1, "backoffTimer"    # I

    .line 51
    iput p1, p0, Lcom/sec/erisclient/ErisEventData;->backoffTimer:I

    .line 52
    return-void
.end method

.method protected setConnection(Lcom/sec/erisclient/IPSecConnection;)V
    .locals 0
    .param p1, "connection"    # Lcom/sec/erisclient/IPSecConnection;

    .line 35
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->mConnection:Lcom/sec/erisclient/IPSecConnection;

    .line 36
    return-void
.end method

.method protected setError(Lcom/sec/erisclient/ErisError;)V
    .locals 0
    .param p1, "error"    # Lcom/sec/erisclient/ErisError;

    .line 27
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->mError:Lcom/sec/erisclient/ErisError;

    .line 28
    return-void
.end method

.method protected setEspAA(Ljava/lang/String;)V
    .locals 0
    .param p1, "esp_integ_alg"    # Ljava/lang/String;

    .line 223
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->esp_integ_alg:Ljava/lang/String;

    .line 224
    return-void
.end method

.method protected setEspAKi(Ljava/lang/String;)V
    .locals 0
    .param p1, "esp_kai"    # Ljava/lang/String;

    .line 196
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->esp_kai:Ljava/lang/String;

    .line 197
    return-void
.end method

.method protected setEspAKr(Ljava/lang/String;)V
    .locals 0
    .param p1, "esp_kar"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->esp_kar:Ljava/lang/String;

    .line 206
    return-void
.end method

.method protected setEspEA(Ljava/lang/String;)V
    .locals 0
    .param p1, "esp_enc_alg"    # Ljava/lang/String;

    .line 214
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->esp_enc_alg:Ljava/lang/String;

    .line 215
    return-void
.end method

.method protected setEspEKi(Ljava/lang/String;)V
    .locals 0
    .param p1, "esp_kei"    # Ljava/lang/String;

    .line 178
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->esp_kei:Ljava/lang/String;

    .line 179
    return-void
.end method

.method protected setEspEKr(Ljava/lang/String;)V
    .locals 0
    .param p1, "esp_ker"    # Ljava/lang/String;

    .line 187
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->esp_ker:Ljava/lang/String;

    .line 188
    return-void
.end method

.method protected setEspSpiI(Ljava/lang/String;)V
    .locals 0
    .param p1, "esp_spii"    # Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->esp_spii:Ljava/lang/String;

    .line 161
    return-void
.end method

.method protected setEspSpiR(Ljava/lang/String;)V
    .locals 0
    .param p1, "esp_spir"    # Ljava/lang/String;

    .line 169
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->esp_spir:Ljava/lang/String;

    .line 170
    return-void
.end method

.method protected setIkeEA(Ljava/lang/String;)V
    .locals 0
    .param p1, "ike_enc_alg"    # Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->ike_enc_alg:Ljava/lang/String;

    .line 143
    return-void
.end method

.method protected setIkeError(I)V
    .locals 0
    .param p1, "ikeError"    # I

    .line 43
    iput p1, p0, Lcom/sec/erisclient/ErisEventData;->ikeError:I

    .line 44
    return-void
.end method

.method protected setIkeIA(Ljava/lang/String;)V
    .locals 0
    .param p1, "ike_integ_alg"    # Ljava/lang/String;

    .line 151
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->ike_integ_alg:Ljava/lang/String;

    .line 152
    return-void
.end method

.method protected setIkeSKai(Ljava/lang/String;)V
    .locals 0
    .param p1, "ike_skai"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->ike_skai:Ljava/lang/String;

    .line 125
    return-void
.end method

.method protected setIkeSKar(Ljava/lang/String;)V
    .locals 0
    .param p1, "ike_skar"    # Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->ike_skar:Ljava/lang/String;

    .line 134
    return-void
.end method

.method protected setIkeSKei(Ljava/lang/String;)V
    .locals 0
    .param p1, "ike_skei"    # Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->ike_skei:Ljava/lang/String;

    .line 107
    return-void
.end method

.method protected setIkeSKer(Ljava/lang/String;)V
    .locals 0
    .param p1, "ike_sker"    # Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->ike_sker:Ljava/lang/String;

    .line 116
    return-void
.end method

.method protected setIkeSpiI(Ljava/lang/String;)V
    .locals 0
    .param p1, "ike_spii"    # Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->ike_spii:Ljava/lang/String;

    .line 89
    return-void
.end method

.method protected setIkeSpiR(Ljava/lang/String;)V
    .locals 0
    .param p1, "ike_spir"    # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->ike_spir:Ljava/lang/String;

    .line 98
    return-void
.end method

.method protected setMaxEspSeq(I)V
    .locals 0
    .param p1, "max_seq"    # I

    .line 71
    iput p1, p0, Lcom/sec/erisclient/ErisEventData;->max_seq:I

    .line 72
    return-void
.end method

.method protected setMinEspSeq(I)V
    .locals 0
    .param p1, "min_seq"    # I

    .line 63
    iput p1, p0, Lcom/sec/erisclient/ErisEventData;->min_seq:I

    .line 64
    return-void
.end method

.method protected setPlmnIdValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "n1_mode_plmn_id"    # Ljava/lang/String;

    .line 239
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->n1_mode_plmn_id:Ljava/lang/String;

    .line 240
    return-void
.end method

.method protected setSnssaiValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "n1_mode_snssai"    # Ljava/lang/String;

    .line 231
    iput-object p1, p0, Lcom/sec/erisclient/ErisEventData;->n1_mode_snssai:Ljava/lang/String;

    .line 232
    return-void
.end method

.method protected setTotalRxPackets(I)V
    .locals 0
    .param p1, "total_rx"    # I

    .line 79
    iput p1, p0, Lcom/sec/erisclient/ErisEventData;->total_rx:I

    .line 80
    return-void
.end method
