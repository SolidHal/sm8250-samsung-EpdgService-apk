.class Lcom/sec/epdg/Logger/CriticalLogger$HOLDER;
.super Ljava/lang/Object;
.source "CriticalLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Logger/CriticalLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HOLDER"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sec/epdg/Logger/CriticalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Lcom/sec/epdg/Logger/CriticalLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/epdg/Logger/CriticalLogger;-><init>(Lcom/sec/epdg/Logger/CriticalLogger$1;)V

    sput-object v0, Lcom/sec/epdg/Logger/CriticalLogger$HOLDER;->INSTANCE:Lcom/sec/epdg/Logger/CriticalLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method static synthetic access$000()Lcom/sec/epdg/Logger/CriticalLogger;
    .locals 1

    .line 76
    sget-object v0, Lcom/sec/epdg/Logger/CriticalLogger$HOLDER;->INSTANCE:Lcom/sec/epdg/Logger/CriticalLogger;

    return-object v0
.end method
