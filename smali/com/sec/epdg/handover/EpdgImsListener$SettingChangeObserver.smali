.class Lcom/sec/epdg/handover/EpdgImsListener$SettingChangeObserver;
.super Landroid/database/ContentObserver;
.source "EpdgImsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 641
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener$SettingChangeObserver;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 642
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 643
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 647
    if-nez p2, :cond_0

    .line 648
    return-void

    .line 650
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener$SettingChangeObserver;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->access$000(Lcom/sec/epdg/handover/EpdgImsListener;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange, key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener$SettingChangeObserver;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v1, v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1600(Lcom/sec/epdg/handover/EpdgImsListener;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 654
    return-void

    .line 656
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$SettingChangeObserver;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sec/epdg/handover/EpdgImsListener$OnImsSettingsChangeEvent;

    iget-object v4, p0, Lcom/sec/epdg/handover/EpdgImsListener$SettingChangeObserver;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {v3, v4, v0, v1}, Lcom/sec/epdg/handover/EpdgImsListener$OnImsSettingsChangeEvent;-><init>(Lcom/sec/epdg/handover/EpdgImsListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 657
    return-void
.end method
