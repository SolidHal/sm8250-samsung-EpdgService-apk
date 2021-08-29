.class public final synthetic Lcom/sec/epdg/WifiInterface/-$$Lambda$EpdgWifiInfo$ABbtOrEU1HIv0xm3id4r-lcf6LU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/epdg/WifiInterface/-$$Lambda$EpdgWifiInfo$ABbtOrEU1HIv0xm3id4r-lcf6LU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/epdg/WifiInterface/-$$Lambda$EpdgWifiInfo$ABbtOrEU1HIv0xm3id4r-lcf6LU;

    invoke-direct {v0}, Lcom/sec/epdg/WifiInterface/-$$Lambda$EpdgWifiInfo$ABbtOrEU1HIv0xm3id4r-lcf6LU;-><init>()V

    sput-object v0, Lcom/sec/epdg/WifiInterface/-$$Lambda$EpdgWifiInfo$ABbtOrEU1HIv0xm3id4r-lcf6LU;->INSTANCE:Lcom/sec/epdg/WifiInterface/-$$Lambda$EpdgWifiInfo$ABbtOrEU1HIv0xm3id4r-lcf6LU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    invoke-static {}, Lcom/sec/epdg/WifiInterface/EpdgWifiInfo;->lambda$retrieveWificondAndRegisterForDeath$0()V

    return-void
.end method
