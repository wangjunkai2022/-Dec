.class public Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$do;
.super Lcom/apk/bg;
.source "FeedBackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$do;->if:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$do;->do:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$do;->if:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$do;->do:Ljava/lang/String;

    .line 2
    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->for:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->j()V

    return-void
.end method
