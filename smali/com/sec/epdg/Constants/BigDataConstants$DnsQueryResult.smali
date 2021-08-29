.class public final enum Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;
.super Ljava/lang/Enum;
.source "BigDataConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/BigDataConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DnsQueryResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;

.field public static final enum DNS_QUERY_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;

.field public static final enum NONE:Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;


# instance fields
.field private mStatus:Ljava/lang/String;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 308
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;

    .line 309
    new-instance v0, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;

    const-string v1, "DNS_QUERY_FAIL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v1}, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;->DNS_QUERY_FAIL:Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;

    .line 307
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;

    sget-object v4, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;->$VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;

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

    .line 314
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 315
    iput p3, p0, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;->mValue:I

    .line 316
    iput-object p4, p0, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;->mStatus:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 307
    const-class v0, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;
    .locals 1

    .line 307
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;->$VALUES:[Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;

    return-object v0
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 324
    iget v0, p0, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EPDI / DQFA] mStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/Constants/BigDataConstants$DnsQueryResult;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
