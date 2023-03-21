.class public Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native$do;
.super Ljava/lang/Object;
.source "NewBookReadActivity.java"

# interfaces
.implements Lcom/apk/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 3
    invoke-virtual {p1}, Lcom/apk/h2;->A()V

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native;

    iget-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-wide v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native;->do:J

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->J(J)V

    return-void
.end method
