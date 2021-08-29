.class Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;
.super Landroid/os/Handler;
.source "EpdgSettingsWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgSettingsWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsWriteHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgSettingsWriter;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgSettingsWriter;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 97
    iput-object p1, p0, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;->this$0:Lcom/sec/epdg/EpdgSettingsWriter;

    .line 98
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 99
    return-void
.end method

.method private writeSettings(Landroid/content/ContentValues;[Ljava/lang/String;)Z
    .locals 10
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "projection"    # [Ljava/lang/String;

    .line 145
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 146
    const-string v1, "iwlansettings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "todos"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 147
    const-string v1, "epdgsettings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 148
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, ""

    .line 149
    .local v1, "mnoName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;->this$0:Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-static {v2}, Lcom/sec/epdg/EpdgSettingsWriter;->access$300(Lcom/sec/epdg/EpdgSettingsWriter;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getInstance(I)Lcom/sec/epdg/Operator/EpdgOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/Operator/EpdgOperator;->getMnoName()Ljava/lang/String;

    move-result-object v7

    .line 151
    .end local v1    # "mnoName":Ljava/lang/String;
    .local v7, "mnoName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;->this$0:Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-static {v1}, Lcom/sec/epdg/EpdgSettingsWriter;->access$400(Lcom/sec/epdg/EpdgSettingsWriter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mnoname=\'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\'"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 153
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;->this$0:Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-static {v2}, Lcom/sec/epdg/EpdgSettingsWriter;->access$200(Lcom/sec/epdg/EpdgSettingsWriter;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "writeSettings: need to use dummy values"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v2, "default"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v2

    .line 157
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 158
    .end local v1    # "c":Landroid/database/Cursor;
    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;->this$0:Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-static {v1}, Lcom/sec/epdg/EpdgSettingsWriter;->access$400(Lcom/sec/epdg/EpdgSettingsWriter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, p1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 160
    .local v1, "ret":I
    if-gtz v1, :cond_3

    .line 161
    const/4 v2, 0x0

    return v2

    .line 163
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 151
    .local v1, "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;->this$0:Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-static {v0}, Lcom/sec/epdg/EpdgSettingsWriter;->access$000(Lcom/sec/epdg/EpdgSettingsWriter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;->this$0:Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-static {v0}, Lcom/sec/epdg/EpdgSettingsWriter;->access$100(Lcom/sec/epdg/EpdgSettingsWriter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;->this$0:Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-static {v0}, Lcom/sec/epdg/EpdgSettingsWriter;->access$100(Lcom/sec/epdg/EpdgSettingsWriter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 111
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;

    .line 112
    .local v0, "setting":Lcom/sec/epdg/EpdgSettingsWriter$SettingData;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v2, "values":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;->this$0:Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-static {v3}, Lcom/sec/epdg/EpdgSettingsWriter;->access$100(Lcom/sec/epdg/EpdgSettingsWriter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v1

    new-array v3, v3, [Ljava/lang/String;

    .line 114
    .local v3, "projection":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 115
    .local v4, "index":I
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;->this$0:Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-static {v5}, Lcom/sec/epdg/EpdgSettingsWriter;->access$100(Lcom/sec/epdg/EpdgSettingsWriter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 116
    iget-object v5, p0, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;->this$0:Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-static {v5}, Lcom/sec/epdg/EpdgSettingsWriter;->access$100(Lcom/sec/epdg/EpdgSettingsWriter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;

    .line 117
    .local v5, "data":Lcom/sec/epdg/EpdgSettingsWriter$SettingData;
    if-eqz v5, :cond_2

    .line 118
    iget-object v6, v5, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;->key:Ljava/lang/String;

    aput-object v6, v3, v4

    .line 119
    iget-object v6, v5, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;->key:Ljava/lang/String;

    iget-object v7, v5, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;->val:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v6, p0, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;->this$0:Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-static {v6}, Lcom/sec/epdg/EpdgSettingsWriter;->access$200(Lcom/sec/epdg/EpdgSettingsWriter;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writing : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;->val:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v5    # "data":Lcom/sec/epdg/EpdgSettingsWriter$SettingData;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :cond_3
    iget-object v5, v0, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;->key:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 124
    iget-object v5, v0, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;->key:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;->val:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    add-int/2addr v4, v1

    .line 126
    invoke-direct {p0, v2, v3}, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;->writeSettings(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 127
    iget v5, p1, Landroid/os/Message;->arg1:I

    const/4 v6, 0x3

    if-ge v5, v6, :cond_4

    .line 128
    iget v5, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v5, v1

    iput v5, p1, Landroid/os/Message;->arg1:I

    .line 129
    iget-object v5, p0, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;->this$0:Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-static {v5}, Lcom/sec/epdg/EpdgSettingsWriter;->access$000(Lcom/sec/epdg/EpdgSettingsWriter;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 130
    .local v1, "retryMsg":Landroid/os/Message;
    iget v5, p1, Landroid/os/Message;->what:I

    iput v5, v1, Landroid/os/Message;->what:I

    .line 131
    iget v5, p1, Landroid/os/Message;->arg1:I

    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 132
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 133
    iget-object v5, p0, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;->this$0:Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-static {v5}, Lcom/sec/epdg/EpdgSettingsWriter;->access$000(Lcom/sec/epdg/EpdgSettingsWriter;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 134
    return-void

    .line 137
    .end local v1    # "retryMsg":Landroid/os/Message;
    :cond_4
    iget-object v1, p0, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;->this$0:Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-static {v1}, Lcom/sec/epdg/EpdgSettingsWriter;->access$100(Lcom/sec/epdg/EpdgSettingsWriter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 138
    nop

    .line 142
    .end local v0    # "setting":Lcom/sec/epdg/EpdgSettingsWriter$SettingData;
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v4    # "index":I
    :goto_1
    return-void
.end method
