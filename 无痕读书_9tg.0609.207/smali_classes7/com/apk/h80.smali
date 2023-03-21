.class public Lcom/apk/h80;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TrBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/apk/fa0;->extends()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    sget p1, Lcom/tr/comment/sdk/R$color;->tr_sdk_comment_title_bg_night:I

    invoke-static {p0, p1}, Lcom/apk/k40;->if(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p0, p1, v0}, Lcom/apk/k80;->if(Landroid/app/Activity;II)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/apk/fa0;->do(Landroid/content/Context;)I

    move-result p1

    invoke-static {p0, p1, v0}, Lcom/apk/k80;->if(Landroid/app/Activity;II)V

    :goto_0
    return-void
.end method
