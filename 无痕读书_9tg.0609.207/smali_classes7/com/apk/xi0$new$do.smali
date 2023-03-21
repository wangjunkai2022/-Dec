.class public final Lcom/apk/xi0$new$do;
.super Lcom/apk/ph0;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/xi0$new;->new(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic case:Lcom/apk/xi0$new;

.field public final synthetic try:Lcom/apk/gj0;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/apk/gj0;Lcom/apk/xi0$new;Lcom/apk/gj0;ILjava/util/List;Z)V
    .locals 0

    iput-object p5, p0, Lcom/apk/xi0$new$do;->try:Lcom/apk/gj0;

    iput-object p6, p0, Lcom/apk/xi0$new$do;->case:Lcom/apk/xi0$new;

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/apk/ph0;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public do()J
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/xi0$new$do;->case:Lcom/apk/xi0$new;

    iget-object v0, v0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 2
    iget-object v0, v0, Lcom/apk/xi0;->if:Lcom/apk/xi0$for;

    .line 3
    iget-object v1, p0, Lcom/apk/xi0$new$do;->try:Lcom/apk/gj0;

    invoke-virtual {v0, v1}, Lcom/apk/xi0$for;->for(Lcom/apk/gj0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lcom/apk/uj0;->for:Lcom/apk/uj0$do;

    .line 5
    sget-object v1, Lcom/apk/uj0;->do:Lcom/apk/uj0;

    const-string v2, "Http2Connection.Listener failure for "

    .line 6
    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/apk/xi0$new$do;->case:Lcom/apk/xi0$new;

    iget-object v3, v3, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 7
    iget-object v3, v3, Lcom/apk/xi0;->new:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v0}, Lcom/apk/uj0;->this(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 9
    :try_start_1
    iget-object v1, p0, Lcom/apk/xi0$new$do;->try:Lcom/apk/gj0;

    sget-object v2, Lcom/apk/ti0;->for:Lcom/apk/ti0;

    invoke-virtual {v1, v2, v0}, Lcom/apk/gj0;->for(Lcom/apk/ti0;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
