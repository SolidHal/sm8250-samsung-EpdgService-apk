.class public final enum Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdapterConf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

.field public static final enum VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

.field public static final enum VIRTUAL_ADAPTER_CONF_NONE:Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

.field public static final enum VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 221
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    const-string v1, "VIRTUAL_ADAPTER_CONF_INTERNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    .line 222
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    const-string v1, "VIRTUAL_ADAPTER_CONF_NONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_NONE:Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    .line 223
    new-instance v0, Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    const-string v1, "VIRTUAL_ADAPTER_CONF_NONE_TUN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    .line 220
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_NONE:Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 220
    const-class v0, Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;
    .locals 1

    .line 220
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;->$VALUES:[Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    invoke-virtual {v0}, [Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/DataType/IWlanEnum$AdapterConf;

    return-object v0
.end method
