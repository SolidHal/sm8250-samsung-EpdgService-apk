.class public final enum Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ikeversion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

.field public static final enum IKE_VERSION_1:Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

.field public static final enum IKE_VERSION_2:Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 146
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    const-string v1, "IKE_VERSION_1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;->IKE_VERSION_1:Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    .line 147
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    const-string v1, "IKE_VERSION_2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;->IKE_VERSION_2:Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    .line 145
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    sget-object v4, Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;->IKE_VERSION_1:Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 145
    const-class v0, Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;
    .locals 1

    .line 145
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    invoke-virtual {v0}, [Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/DataType/IWlanEnum$Ikeversion;

    return-object v0
.end method
