.class Lcom/sec/epdg/Logger/LogFileManager$MeteredWriter;
.super Ljava/lang/Object;
.source "LogFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Logger/LogFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MeteredWriter"
.end annotation


# instance fields
.field final writer:Ljava/io/Writer;

.field written:J


# direct methods
.method constructor <init>(Ljava/io/Writer;J)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "written"    # J

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/sec/epdg/Logger/LogFileManager$MeteredWriter;->writer:Ljava/io/Writer;

    .line 102
    iput-wide p2, p0, Lcom/sec/epdg/Logger/LogFileManager$MeteredWriter;->written:J

    .line 103
    return-void
.end method


# virtual methods
.method public write(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/sec/epdg/Logger/LogFileManager$MeteredWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/sec/epdg/Logger/LogFileManager$MeteredWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 108
    iget-wide v0, p0, Lcom/sec/epdg/Logger/LogFileManager$MeteredWriter;->written:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/epdg/Logger/LogFileManager$MeteredWriter;->written:J

    .line 109
    return-void
.end method
