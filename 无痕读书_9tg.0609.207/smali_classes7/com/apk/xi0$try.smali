.class public final Lcom/apk/xi0$try;
.super Lcom/apk/ph0;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/xi0;->package(ILcom/apk/ti0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic case:I

.field public final synthetic else:Lcom/apk/ti0;

.field public final synthetic try:Lcom/apk/xi0;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/apk/xi0;ILcom/apk/ti0;)V
    .locals 0

    iput-object p5, p0, Lcom/apk/xi0$try;->try:Lcom/apk/xi0;

    iput p6, p0, Lcom/apk/xi0$try;->case:I

    iput-object p7, p0, Lcom/apk/xi0$try;->else:Lcom/apk/ti0;

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/apk/ph0;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public do()J
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/xi0$try;->try:Lcom/apk/xi0;

    iget v1, p0, Lcom/apk/xi0$try;->case:I

    iget-object v2, p0, Lcom/apk/xi0$try;->else:Lcom/apk/ti0;

    if-eqz v0, :cond_0

    const-string v3, "statusCode"

    .line 2
    invoke-static {v2, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Lcom/apk/xi0;->extends:Lcom/apk/hj0;

    invoke-virtual {v0, v1, v2}, Lcom/apk/hj0;->extends(ILcom/apk/ti0;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/apk/xi0$try;->try:Lcom/apk/xi0;

    .line 6
    sget-object v2, Lcom/apk/ti0;->for:Lcom/apk/ti0;

    invoke-virtual {v1, v2, v2, v0}, Lcom/apk/xi0;->for(Lcom/apk/ti0;Lcom/apk/ti0;Ljava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
