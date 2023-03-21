.class public Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$case;
.super Lcom/apk/bg;
.source "BookGroupDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$case;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2
    :pswitch_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$case;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->if(Z)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$case;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->r()V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$case;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 8
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->this:Lcom/apk/yg;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, p1, p1}, Lcom/apk/yg;->do(II)V

    goto :goto_0

    .line 10
    :pswitch_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$case;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 11
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    .line 12
    invoke-virtual {p1}, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->do()Ljava/util/List;

    move-result-object p1

    .line 13
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 14
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$case;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getGroupId()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, v1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->for:Z

    iget-boolean v3, v1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->new:Z

    invoke-static {v1, p1, v0, v2, v3}, Lcom/biquge/ebook/app/ui/activity/CreateBookGroupActivity;->m(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 16
    throw p1

    .line 17
    :pswitch_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$case;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 18
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->try:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    .line 19
    invoke-virtual {v0}, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->do()Ljava/util/List;

    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->q(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0901e9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
