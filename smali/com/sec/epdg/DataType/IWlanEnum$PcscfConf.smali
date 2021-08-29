.class public final enum Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PcscfConf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

.field public static final enum PCSCF_CONF_NONE:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

.field public static final enum PCSCF_CONF_V4:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

.field public static final enum PCSCF_CONF_V4V6:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

.field public static final enum PCSCF_CONF_V6:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 227
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    const-string v1, "PCSCF_CONF_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;->PCSCF_CONF_NONE:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    .line 228
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    const-string v1, "PCSCF_CONF_V4"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;->PCSCF_CONF_V4:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    .line 229
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    const-string v1, "PCSCF_CONF_V6"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;->PCSCF_CONF_V6:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    .line 230
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    const-string v1, "PCSCF_CONF_V4V6"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;->PCSCF_CONF_V4V6:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    .line 226
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    sget-object v6, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;->PCSCF_CONF_NONE:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    aput-object v6, v1, v2

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;->PCSCF_CONF_V4:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;->PCSCF_CONF_V6:Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 226
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 226
    const-class v0, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;
    .locals 1

    .line 226
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    invoke-virtual {v0}, [Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/DataType/IWlanEnum$PcscfConf;

    return-object v0
.end method
