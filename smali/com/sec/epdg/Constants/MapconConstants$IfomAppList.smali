.class public Lcom/sec/epdg/Constants/MapconConstants$IfomAppList;
.super Ljava/lang/Object;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/MapconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IfomAppList"
.end annotation


# instance fields
.field private mIfomAppList:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "dbString"    # Ljava/lang/String;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    const-class v0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    .line 426
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppList;->mIfomAppList:Ljava/util/EnumSet;

    .line 429
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "appListStr":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 431
    .local v3, "appStr":Ljava/lang/String;
    nop

    .line 432
    invoke-static {v3}, Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;->getIfomAppType(Ljava/lang/String;)Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;

    move-result-object v4

    .line 434
    .local v4, "app":Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;
    iget-object v5, p0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppList;->mIfomAppList:Ljava/util/EnumSet;

    invoke-virtual {v5, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 439
    iget-object v5, p0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppList;->mIfomAppList:Ljava/util/EnumSet;

    invoke-virtual {v5, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 430
    .end local v3    # "appStr":Ljava/lang/String;
    .end local v4    # "app":Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 435
    .restart local v3    # "appStr":Ljava/lang/String;
    .restart local v4    # "app":Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IfomAppList Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[MAPCON]"

    invoke-static {v2, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid key : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 441
    .end local v3    # "appStr":Ljava/lang/String;
    .end local v4    # "app":Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;
    :cond_1
    return-void
.end method


# virtual methods
.method public getIfomAppList()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/sec/epdg/Constants/MapconConstants$IfomAppType;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/sec/epdg/Constants/MapconConstants$IfomAppList;->mIfomAppList:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
