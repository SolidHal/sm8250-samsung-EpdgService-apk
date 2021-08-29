.class public final enum Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;
.super Ljava/lang/Enum;
.source "BigDataConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/BigDataConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LastestReasonForEPDI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

.field public static final enum DNS_QUERY_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

.field public static final enum L2W_HANDOVER_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

.field public static final enum NONE:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

.field public static final enum NO_DPD_RESPONSE:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

.field public static final enum PEER_DISCONNECT:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

.field public static final enum THROTTLING_STATE:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

.field public static final enum W2L_HANDOVER_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;


# instance fields
.field private mStatus:Ljava/lang/String;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 335
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    .line 336
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    const-string v1, "L2W_HANDOVER_FAIL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v1}, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->L2W_HANDOVER_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    .line 337
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    const-string v1, "W2L_HANDOVER_FAIL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v1}, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->W2L_HANDOVER_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    .line 338
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    const-string v1, "THROTTLING_STATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5, v1}, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->THROTTLING_STATE:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    .line 339
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    const-string v1, "DNS_QUERY_FAIL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6, v1}, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->DNS_QUERY_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    .line 340
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    const-string v1, "PEER_DISCONNECT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7, v1}, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->PEER_DISCONNECT:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    .line 341
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    const-string v1, "NO_DPD_RESPONSE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8, v1}, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->NO_DPD_RESPONSE:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    .line 334
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    sget-object v9, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    aput-object v9, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->L2W_HANDOVER_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->W2L_HANDOVER_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->THROTTLING_STATE:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->DNS_QUERY_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->PEER_DISCONNECT:Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->$VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 346
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 347
    iput p3, p0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->mValue:I

    .line 348
    iput-object p4, p0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->mStatus:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 334
    const-class v0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;
    .locals 1

    .line 334
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->$VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;

    return-object v0
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 356
    iget v0, p0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EPDI / IDRE] mStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/Constants/BigDataConstants$LastestReasonForEPDI;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
