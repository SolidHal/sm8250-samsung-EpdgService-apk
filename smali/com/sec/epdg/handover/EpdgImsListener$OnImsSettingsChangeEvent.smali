.class Lcom/sec/epdg/handover/EpdgImsListener$OnImsSettingsChangeEvent;
.super Lcom/sec/epdg/EpdgServiceRunnable;
.source "EpdgImsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnImsSettingsChangeEvent"
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 582
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnImsSettingsChangeEvent;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServiceRunnable;-><init>()V

    .line 583
    iput-object p2, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnImsSettingsChangeEvent;->mKey:Ljava/lang/String;

    .line 584
    iput-object p3, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnImsSettingsChangeEvent;->mValue:Ljava/lang/String;

    .line 585
    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 3

    .line 589
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnImsSettingsChangeEvent;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$000(Lcom/sec/epdg/handover/EpdgImsListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onImsSettingsChangeEvent: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnImsSettingsChangeEvent;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1200(Lcom/sec/epdg/handover/EpdgImsListener;)Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnImsSettingsChangeEvent;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnImsSettingsChangeEvent;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->updateImsSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-void
.end method
