.class public final Lcom/apk/cj0;
.super Lcom/apk/ph0;
.source "TaskQueue.kt"


# instance fields
.field public final synthetic case:I

.field public final synthetic else:Lcom/apk/ti0;

.field public final synthetic try:Lcom/apk/xi0;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/apk/xi0;ILcom/apk/ti0;)V
    .locals 0

    iput-object p5, p0, Lcom/apk/cj0;->try:Lcom/apk/xi0;

    iput p6, p0, Lcom/apk/cj0;->case:I

    iput-object p7, p0, Lcom/apk/cj0;->else:Lcom/apk/ti0;

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/apk/ph0;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public do()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/cj0;->try:Lcom/apk/xi0;

    .line 2
    iget-object v0, v0, Lcom/apk/xi0;->class:Lcom/apk/kj0;

    .line 3
    iget v1, p0, Lcom/apk/cj0;->case:I

    iget-object v2, p0, Lcom/apk/cj0;->else:Lcom/apk/ti0;

    invoke-interface {v0, v1, v2}, Lcom/apk/kj0;->for(ILcom/apk/ti0;)V

    .line 4
    iget-object v0, p0, Lcom/apk/cj0;->try:Lcom/apk/xi0;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/apk/cj0;->try:Lcom/apk/xi0;

    .line 6
    iget-object v1, v1, Lcom/apk/xi0;->package:Ljava/util/Set;

    .line 7
    iget v2, p0, Lcom/apk/cj0;->case:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
