.class Lcom/sec/epdg/EpdgTimers$EpdgTimer;
.super Landroid/os/CountDownTimer;
.source "EpdgTimers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgTimers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgTimer"
.end annotation


# instance fields
.field private mTimerType:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

.field final synthetic this$0:Lcom/sec/epdg/EpdgTimers;


# direct methods
.method protected constructor <init>(Lcom/sec/epdg/EpdgTimers;Lcom/sec/epdg/EpdgTimers$EpdgTimerType;JJ)V
    .locals 0
    .param p2, "timerType"    # Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    .param p3, "millisInFuture"    # J
    .param p5, "countDownInterval"    # J

    .line 153
    iput-object p1, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->this$0:Lcom/sec/epdg/EpdgTimers;

    .line 154
    invoke-direct {p0, p3, p4, p5, p6}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 151
    sget-object p1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->NOTDEFINED:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    iput-object p1, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->mTimerType:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 155
    iput-object p2, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->mTimerType:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 156
    return-void
.end method


# virtual methods
.method protected getTimerType()Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->mTimerType:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    return-object v0
.end method

.method public onFinish()V
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->mTimerType:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timer finished"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EPDGTimers]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->mTimerType:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->c(ILjava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->mTimerType:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 170
    .local v0, "timerType":Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->NOTDEFINED:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    iput-object v1, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->mTimerType:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .line 171
    iget-object v1, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->this$0:Lcom/sec/epdg/EpdgTimers;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgTimers;->access$000(Lcom/sec/epdg/EpdgTimers;Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 172
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .param p1, "millisUntilFinished"    # J

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->mTimerType:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timer tick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EPDGTimers]"

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method
