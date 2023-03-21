.class public Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else$do;
.super Ljava/lang/Object;
.source "BookShelfFragment.java"

# interfaces
.implements Lcom/apk/wv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->onData(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;

    .line 5
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 6
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getGroupId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/apk/n2;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    invoke-static {}, Lcom/apk/ze;->V()V

    :cond_0
    return-void
.end method
