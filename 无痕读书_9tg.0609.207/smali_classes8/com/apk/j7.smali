.class public Lcom/apk/j7;
.super Ljava/lang/Object;
.source "BookGroupDetailActivity.java"

# interfaces
.implements Lcom/apk/xv;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/j7;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(ILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object p2, p0, Lcom/apk/j7;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 2
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->case:Ljava/util/List;

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/apk/j7;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    const p1, 0x7f1001c0

    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/apk/j7$do;

    invoke-direct {v3, p0}, Lcom/apk/j7$do;-><init>(Lcom/apk/j7;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v1

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/apk/f6;->showTipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/apk/j7;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 7
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->catch:Lcom/apk/v5;

    const/4 v0, -0x1

    .line 8
    invoke-virtual {p1, p2, v0}, Lcom/apk/v5;->new(ZI)V

    :goto_0
    return-void
.end method
