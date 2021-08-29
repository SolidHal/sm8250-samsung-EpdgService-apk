.class Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;
.super Ljava/lang/Object;
.source "EpdgBigDataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/BigData/EpdgBigDataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgBigDataVowifiCallInfo"
.end annotation


# instance fields
.field mAllTimeMaintaingIWLAN:I

.field mCallEndTime:J

.field mCallStartTime:J

.field mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

.field mCountOfL2WHandover:I

.field mCountOfW2LHandover:I

.field mL2WHandoverEndTime:J

.field mL2WHandoverStartTime:J

.field mVoWifiCallDropType:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;

.field final synthetic this$0:Lcom/sec/epdg/BigData/EpdgBigDataController;


# direct methods
.method constructor <init>(Lcom/sec/epdg/BigData/EpdgBigDataController;)V
    .locals 2

    .line 824
    iput-object p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->this$0:Lcom/sec/epdg/BigData/EpdgBigDataController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    sget-object p1, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    iput-object p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 826
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCallStartTime:J

    .line 827
    iput-wide v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCallEndTime:J

    .line 828
    iput-wide v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mL2WHandoverStartTime:J

    .line 829
    iput-wide v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mL2WHandoverEndTime:J

    .line 830
    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mAllTimeMaintaingIWLAN:I

    .line 831
    iput p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCountOfL2WHandover:I

    .line 832
    iput p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCountOfW2LHandover:I

    .line 833
    sget-object p1, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;

    iput-object p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mVoWifiCallDropType:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;

    .line 834
    return-void
.end method


# virtual methods
.method public getAllTimeMaintaingIWLAN()I
    .locals 1

    .line 881
    iget v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mAllTimeMaintaingIWLAN:I

    return v0
.end method

.method public getCallEndTime()J
    .locals 2

    .line 865
    iget-wide v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCallEndTime:J

    return-wide v0
.end method

.method public getCallStartTime()J
    .locals 2

    .line 857
    iget-wide v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCallStartTime:J

    return-wide v0
.end method

.method public getCallStatus()Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    return-object v0
.end method

.method public getCountOfL2WHandover()I
    .locals 1

    .line 889
    iget v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCountOfL2WHandover:I

    return v0
.end method

.method public getCountOfW2LHandover()I
    .locals 1

    .line 897
    iget v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCountOfW2LHandover:I

    return v0
.end method

.method public getL2WHandoverStartTime()J
    .locals 2

    .line 873
    iget-wide v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mL2WHandoverStartTime:J

    return-wide v0
.end method

.method public getVoWifiCallDropType()Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mVoWifiCallDropType:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;

    return-object v0
.end method

.method public initializeEpdgBigDataVowifiCallInfo()V
    .locals 2

    .line 837
    sget-object v0, Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 838
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCallStartTime:J

    .line 839
    iput-wide v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCallEndTime:J

    .line 840
    iput-wide v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mL2WHandoverStartTime:J

    .line 841
    iput-wide v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mL2WHandoverEndTime:J

    .line 842
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mAllTimeMaintaingIWLAN:I

    .line 843
    iput v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCountOfL2WHandover:I

    .line 844
    iput v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCountOfW2LHandover:I

    .line 845
    sget-object v0, Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;->NONE:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;

    iput-object v0, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mVoWifiCallDropType:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;

    .line 846
    return-void
.end method

.method public setAllTimeMaintaingIWLAN(I)V
    .locals 0
    .param p1, "AllTimeMaintaingIWLAN"    # I

    .line 885
    iput p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mAllTimeMaintaingIWLAN:I

    .line 886
    return-void
.end method

.method public setCallEndTime(J)V
    .locals 0
    .param p1, "callEndTime"    # J

    .line 869
    iput-wide p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCallEndTime:J

    .line 870
    return-void
.end method

.method public setCallStartTime(J)V
    .locals 0
    .param p1, "callStartTime"    # J

    .line 861
    iput-wide p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCallStartTime:J

    .line 862
    return-void
.end method

.method public setCallStatus(Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;)V
    .locals 0
    .param p1, "callStatus"    # Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 853
    iput-object p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    .line 854
    return-void
.end method

.method public setCountOfL2WHandover(I)V
    .locals 0
    .param p1, "CountOfL2WHandover"    # I

    .line 893
    iput p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCountOfL2WHandover:I

    .line 894
    return-void
.end method

.method public setCountOfW2LHandover(I)V
    .locals 0
    .param p1, "CountOfW2LHandover"    # I

    .line 901
    iput p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCountOfW2LHandover:I

    .line 902
    return-void
.end method

.method public setL2WHandoverStartTime(J)V
    .locals 0
    .param p1, "L2WHandoverStartTime"    # J

    .line 877
    iput-wide p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mL2WHandoverStartTime:J

    .line 878
    return-void
.end method

.method public setVoWifiCallDropType(Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;)V
    .locals 0
    .param p1, "voWifiCallDropType"    # Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;

    .line 909
    iput-object p1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mVoWifiCallDropType:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;

    .line 910
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EpdgBigDataController]EpdgBigDataVowifiCallInfo [mCallStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCallStatus:Lcom/sec/epdg/Constants/ImsConstants$EpdgCallStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallStartTime :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCallStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCallEndTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCallEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mL2WHandoverStartTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mL2WHandoverStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mL2WHandoverEndTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mL2WHandoverEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAllTimeMaintaingIWLAN : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mAllTimeMaintaingIWLAN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCountOfL2WHandover : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCountOfL2WHandover:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCountOfW2LHandover : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mCountOfW2LHandover:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVoWifiCallDropType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/BigData/EpdgBigDataController$EpdgBigDataVowifiCallInfo;->mVoWifiCallDropType:Lcom/sec/epdg/Constants/BigDataConstants$VoWifiCallDropType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
