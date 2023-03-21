.class public Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$if;
.super Ljava/lang/Object;
.source "FeedBackActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->parent_sv:Landroid/widget/ScrollView;

    const/4 p2, 0x0

    const/16 v0, 0x190

    invoke-virtual {p1, p2, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method
