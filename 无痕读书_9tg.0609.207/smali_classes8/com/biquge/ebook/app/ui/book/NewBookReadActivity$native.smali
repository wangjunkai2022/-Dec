.class public Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native;
.super Ljava/lang/Object;
.source "NewBookReadActivity.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->return(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:J

.field public final synthetic if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iput-wide p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native;->do:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native$do;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v2, v1}, Lcom/apk/n2;->case(Landroid/content/Context;ZZLcom/apk/g1;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 4
    invoke-virtual {v0}, Lcom/apk/h2;->A()V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-wide v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native;->do:J

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->J(J)V

    return-void
.end method
