.class public Lcom/apk/p$for;
.super Lcom/apk/sy;
.source "AppUpgradeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field public final for:Ljava/lang/String;

.field public final if:Landroid/content/Context;

.field public final new:I

.field public final synthetic try:Lcom/apk/p;


# direct methods
.method public constructor <init>(Lcom/apk/p;Landroid/content/Context;Lcom/biquge/ebook/app/bean/NewVersionBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/p$for;->try:Lcom/apk/p;

    .line 2
    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apk/sy;-><init>(Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Lcom/apk/p$for;->if:Landroid/content/Context;

    const p1, 0x7f10002a

    .line 4
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/p$for;->for:Ljava/lang/String;

    .line 5
    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/apk/p$for;->new:I

    return-void
.end method


# virtual methods
.method public case(Ljava/io/File;Lcom/apk/hy;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/p$for;->if:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/apk/ze;->z(Landroid/content/Context;Ljava/io/File;)V

    .line 2
    invoke-static {}, Lcom/apk/cg;->if()Lcom/apk/cg;

    move-result-object p1

    iget v0, p0, Lcom/apk/p$for;->new:I

    invoke-virtual {p1, v0}, Lcom/apk/cg;->do(I)V

    .line 3
    iget-object p1, p0, Lcom/apk/p$for;->try:Lcom/apk/p;

    .line 4
    iget-object p1, p1, Lcom/apk/p;->for:Lcom/apk/p$new;

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/apk/p$new;->a(Ljava/io/File;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/apk/p$for;->try:Lcom/apk/p;

    .line 7
    iget-object p1, p1, Lcom/apk/p;->new:Lcom/apk/p$new;

    if-eqz p1, :cond_1

    .line 8
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/apk/p$new;->a(Ljava/io/File;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/apk/p$for;->try:Lcom/apk/p;

    .line 10
    iget-object p1, p1, Lcom/apk/p;->try:Lcom/apk/p$new;

    if-eqz p1, :cond_2

    .line 11
    new-instance v0, Ljava/io/File;

    iget-object p2, p2, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/apk/p$new;->a(Ljava/io/File;)V

    :cond_2
    return-void
.end method

.method public do(Lcom/apk/hy;)V
    .locals 0

    const p1, 0x7f100129

    .line 1
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/apk/p$for;->try:Lcom/apk/p;

    .line 4
    iget-object p1, p1, Lcom/apk/p;->for:Lcom/apk/p$new;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/apk/p$new;->instanceof()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/apk/p$for;->try:Lcom/apk/p;

    .line 7
    iget-object p1, p1, Lcom/apk/p;->new:Lcom/apk/p$new;

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1}, Lcom/apk/p$new;->instanceof()V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/apk/p$for;->try:Lcom/apk/p;

    .line 10
    iget-object p1, p1, Lcom/apk/p;->try:Lcom/apk/p$new;

    if-eqz p1, :cond_2

    .line 11
    invoke-interface {p1}, Lcom/apk/p$new;->instanceof()V

    :cond_2
    return-void
.end method

.method public for(Lcom/apk/hy;)V
    .locals 6

    .line 1
    iget-wide v0, p1, Lcom/apk/hy;->goto:J

    .line 2
    iget-wide v2, p1, Lcom/apk/hy;->else:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    move-wide v2, v4

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/apk/p$for;->try:Lcom/apk/p;

    .line 4
    iget-object p1, p1, Lcom/apk/p;->for:Lcom/apk/p$new;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/apk/p$new;->onProgress(JJ)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/apk/p$for;->try:Lcom/apk/p;

    .line 7
    iget-object p1, p1, Lcom/apk/p;->new:Lcom/apk/p$new;

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/apk/p$new;->onProgress(JJ)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/apk/p$for;->try:Lcom/apk/p;

    .line 10
    iget-object p1, p1, Lcom/apk/p;->try:Lcom/apk/p$new;

    if-eqz p1, :cond_3

    .line 11
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/apk/p$new;->onProgress(JJ)V

    .line 12
    :cond_3
    invoke-static {}, Lcom/apk/cg;->if()Lcom/apk/cg;

    move-result-object p1

    iget v4, p0, Lcom/apk/p$for;->new:I

    long-to-int v3, v2

    long-to-int v1, v0

    invoke-virtual {p1, v4, v3, v1}, Lcom/apk/cg;->new(III)V

    return-void
.end method

.method public bridge synthetic if(Ljava/lang/Object;Lcom/apk/hy;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/apk/p$for;->case(Ljava/io/File;Lcom/apk/hy;)V

    return-void
.end method

.method public new(Lcom/apk/hy;)V
    .locals 0

    return-void
.end method

.method public try(Lcom/apk/hy;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/cg;->if()Lcom/apk/cg;

    move-result-object p1

    iget-object v0, p0, Lcom/apk/p$for;->if:Landroid/content/Context;

    iget v1, p0, Lcom/apk/p$for;->new:I

    iget-object v2, p0, Lcom/apk/p$for;->for:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/apk/cg;->for(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method
