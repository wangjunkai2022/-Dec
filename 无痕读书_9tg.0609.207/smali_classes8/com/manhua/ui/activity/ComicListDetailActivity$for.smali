.class public Lcom/manhua/ui/activity/ComicListDetailActivity$for;
.super Lcom/apk/bg;
.source "ComicListDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/activity/ComicListDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicListDetailActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicListDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 3
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicListDetailActivity;->this:Lcom/apk/z2;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 5
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicListDetailActivity;->do:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 8
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicListDetailActivity;->this:Lcom/apk/z2;

    .line 9
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 10
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicListDetailActivity;->do:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v0}, Lcom/apk/z2;->class(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 13
    :pswitch_1
    :try_start_1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 14
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicListDetailActivity;->if:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f100259

    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    iget-object v2, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 17
    iget-object v2, v2, Lcom/manhua/ui/activity/ComicListDetailActivity;->if:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 18
    invoke-static {p1, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    sget-object v1, Lcom/apk/hf;->if:Lcom/apk/hf;

    invoke-static {v0, v1, p1}, Lcom/apk/w0;->else(Landroid/content/Context;Lcom/apk/hf;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 21
    :pswitch_2
    :try_start_2
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 22
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicListDetailActivity;->do:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    iget-object v0, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 25
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicListDetailActivity;->do:Ljava/lang/String;

    .line 26
    iget-object v2, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 27
    iget-object v2, v2, Lcom/manhua/ui/activity/ComicListDetailActivity;->if:Ljava/lang/String;

    .line 28
    invoke-static {p1, v0, v2, v1, v1}, Lcom/apk/ze;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 30
    :pswitch_3
    :try_start_3
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 31
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicListDetailActivity;->this:Lcom/apk/z2;

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 33
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicListDetailActivity;->super:Lcom/manhua/data/bean/ComicInfoEntity;

    if-eqz p1, :cond_0

    .line 34
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 35
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicListDetailActivity;->do:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 38
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicListDetailActivity;->this:Lcom/apk/z2;

    .line 39
    iget-object v2, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 40
    iget-object v2, v2, Lcom/manhua/ui/activity/ComicListDetailActivity;->do:Ljava/lang/String;

    .line 41
    iget-object v3, p0, Lcom/manhua/ui/activity/ComicListDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicListDetailActivity;

    .line 42
    iget-object v3, v3, Lcom/manhua/ui/activity/ComicListDetailActivity;->super:Lcom/manhua/data/bean/ComicInfoEntity;

    .line 43
    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/apk/z2;->const(ZLjava/lang/String;Lcom/manhua/data/bean/ComicInfoEntity;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090033
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
