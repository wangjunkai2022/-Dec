.class public Lcom/apk/t20;
.super Lcom/apk/bg;
.source "PublicLoadingView.java"


# instance fields
.field public final synthetic do:Lcom/manhua/ui/widget/PublicLoadingView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/PublicLoadingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/t20;->do:Lcom/manhua/ui/widget/PublicLoadingView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/t20;->do:Lcom/manhua/ui/widget/PublicLoadingView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/PublicLoadingView;->do()V

    .line 2
    iget-object p1, p0, Lcom/apk/t20;->do:Lcom/manhua/ui/widget/PublicLoadingView;

    .line 3
    iget-object p1, p1, Lcom/manhua/ui/widget/PublicLoadingView;->goto:Lcom/manhua/ui/widget/PublicLoadingView$do;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/manhua/ui/widget/PublicLoadingView$do;->do()V

    :cond_0
    return-void
.end method
