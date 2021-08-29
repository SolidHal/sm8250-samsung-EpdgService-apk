.class public final synthetic Lcom/sec/epdg/Logger/-$$Lambda$JsVbJ5mpbRjwJuW_A3bDJMqYpF0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/epdg/Logger/-$$Lambda$JsVbJ5mpbRjwJuW_A3bDJMqYpF0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/epdg/Logger/-$$Lambda$JsVbJ5mpbRjwJuW_A3bDJMqYpF0;

    invoke-direct {v0}, Lcom/sec/epdg/Logger/-$$Lambda$JsVbJ5mpbRjwJuW_A3bDJMqYpF0;-><init>()V

    sput-object v0, Lcom/sec/epdg/Logger/-$$Lambda$JsVbJ5mpbRjwJuW_A3bDJMqYpF0;->INSTANCE:Lcom/sec/epdg/Logger/-$$Lambda$JsVbJ5mpbRjwJuW_A3bDJMqYpF0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
