.class public final Lcom/apk/xi0$do;
.super Lcom/apk/ph0;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/xi0;-><init>(Lcom/apk/xi0$if;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic case:J

.field public final synthetic try:Lcom/apk/xi0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/apk/xi0;J)V
    .locals 0

    iput-object p3, p0, Lcom/apk/xi0$do;->try:Lcom/apk/xi0;

    iput-wide p4, p0, Lcom/apk/xi0$do;->case:J

    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/apk/ph0;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public do()J
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/apk/xi0$do;->try:Lcom/apk/xi0;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/apk/xi0$do;->try:Lcom/apk/xi0;

    .line 3
    iget-wide v1, v1, Lcom/apk/xi0;->final:J

    .line 4
    iget-object v3, p0, Lcom/apk/xi0$do;->try:Lcom/apk/xi0;

    .line 5
    iget-wide v3, v3, Lcom/apk/xi0;->const:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmp-long v7, v1, v3

    if-gez v7, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/apk/xi0$do;->try:Lcom/apk/xi0;

    .line 7
    iget-wide v2, v1, Lcom/apk/xi0;->const:J

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    .line 8
    iput-wide v2, v1, Lcom/apk/xi0;->const:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 9
    :goto_0
    monitor-exit v0

    if-eqz v1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/apk/xi0$do;->try:Lcom/apk/xi0;

    const/4 v1, 0x0

    .line 11
    sget-object v2, Lcom/apk/ti0;->for:Lcom/apk/ti0;

    invoke-virtual {v0, v2, v2, v1}, Lcom/apk/xi0;->for(Lcom/apk/ti0;Lcom/apk/ti0;Ljava/io/IOException;)V

    const-wide/16 v0, -0x1

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/apk/xi0$do;->try:Lcom/apk/xi0;

    invoke-virtual {v0, v5, v6, v5}, Lcom/apk/xi0;->finally(ZII)V

    .line 13
    iget-wide v0, p0, Lcom/apk/xi0$do;->case:J

    :goto_1
    return-wide v0

    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    throw v1
.end method
