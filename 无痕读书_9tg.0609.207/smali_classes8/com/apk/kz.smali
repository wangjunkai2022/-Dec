.class public Lcom/apk/kz;
.super Lcom/apk/bg;
.source "ComicRecyclerViewAdapter.java"


# instance fields
.field public final synthetic do:Lcom/manhua/adapter/ComicRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/manhua/adapter/ComicRecyclerViewAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/kz;->do:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/apk/kz;->do:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    .line 2
    iget-object p1, p1, Lcom/manhua/adapter/ComicRecyclerViewAdapter;->for:Lcom/apk/l00;

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Lcom/apk/f00$else;

    .line 4
    iget-object p1, p1, Lcom/apk/f00$else;->do:Lcom/apk/f00;

    .line 5
    iget-object p1, p1, Lcom/apk/qz;->if:Landroid/app/Activity;

    .line 6
    sget-object v0, Lcom/apk/hf;->if:Lcom/apk/hf;

    .line 7
    sget-object v1, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->new:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const-string v2, "\u6211\u7684\u8d26\u53f7\u5f53\u524d\u5904\u4e8e\u5c01\u7981\u72b6\u6001\uff0c\u8bf7\u5e2e\u6211\u67e5\u8be2\u72b6\u6001\u3002"

    invoke-static {p1, v0, v1, v2}, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->i(Landroid/content/Context;Lcom/apk/hf;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
