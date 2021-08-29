.class public final enum Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;
.super Ljava/lang/Enum;
.source "BigDataConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/BigDataConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandoverDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

.field public static final enum L2W_HANDOVER:Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

.field public static final enum NONE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

.field public static final enum W2L_HANDOVER:Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;


# instance fields
.field private mStatus:Ljava/lang/String;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 184
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

    .line 185
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

    const-string v1, "L2W_HANDOVER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->L2W_HANDOVER:Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

    .line 186
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

    const-string v1, "W2L_HANDOVER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v1}, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->W2L_HANDOVER:Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

    .line 183
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

    sget-object v5, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->L2W_HANDOVER:Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->$VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

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

    .line 191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 192
    iput p3, p0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->mValue:I

    .line 193
    iput-object p4, p0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->mStatus:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 183
    const-class v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;
    .locals 1

    .line 183
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->$VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;

    return-object v0
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EPDI / HODI] mStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/Constants/BigDataConstants$HandoverDirection;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
