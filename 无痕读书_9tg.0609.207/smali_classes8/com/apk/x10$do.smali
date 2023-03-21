.class public Lcom/apk/x10$do;
.super Ljava/lang/Object;
.source "ComicRankFragment.java"

# interfaces
.implements Lcom/apk/ts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/x10;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/x10;


# direct methods
.method public constructor <init>(Lcom/apk/x10;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/x10$do;->do:Lcom/apk/x10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ss;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/x10$do;->do:Lcom/apk/x10;

    invoke-static {p1}, Lcom/apk/x10;->a(Lcom/apk/x10;)V

    return-void
.end method

.method public if(Lcom/apk/ss;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/x10$do;->do:Lcom/apk/x10;

    .line 2
    iget-object p2, p1, Lcom/apk/x10;->goto:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    .line 3
    iget-boolean p2, p2, Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;->do:Z

    if-nez p2, :cond_0

    .line 4
    iget-object p1, p1, Lcom/apk/x10;->new:Lcom/manhua/ui/widget/PageRecyclerView;

    .line 5
    invoke-static {p1}, Lcom/apk/eg;->case(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
