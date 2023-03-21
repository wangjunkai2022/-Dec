.class public Lcom/lxj/xpopup/impl/InputConfirmPopupView$do;
.super Ljava/lang/Object;
.source "InputConfirmPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/impl/InputConfirmPopupView;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/lxj/xpopup/impl/InputConfirmPopupView;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/impl/InputConfirmPopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/impl/InputConfirmPopupView$do;->do:Lcom/lxj/xpopup/impl/InputConfirmPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/impl/InputConfirmPopupView$do;->do:Lcom/lxj/xpopup/impl/InputConfirmPopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/impl/InputConfirmPopupView$do;->do:Lcom/lxj/xpopup/impl/InputConfirmPopupView;

    iget-object v1, v1, Lcom/lxj/xpopup/impl/ConfirmPopupView;->class:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v1

    const-string v2, "#888888"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/apk/pw;->try(Landroid/content/res/Resources;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/lxj/xpopup/impl/InputConfirmPopupView$do;->do:Lcom/lxj/xpopup/impl/InputConfirmPopupView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/lxj/xpopup/impl/InputConfirmPopupView$do;->do:Lcom/lxj/xpopup/impl/InputConfirmPopupView;

    iget-object v2, v2, Lcom/lxj/xpopup/impl/ConfirmPopupView;->class:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    .line 3
    sget v3, Lcom/apk/zu;->do:I

    .line 4
    invoke-static {v1, v2, v3}, Lcom/apk/pw;->try(Landroid/content/res/Resources;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/lxj/xpopup/impl/InputConfirmPopupView$do;->do:Lcom/lxj/xpopup/impl/InputConfirmPopupView;

    iget-object v2, v2, Lcom/lxj/xpopup/impl/ConfirmPopupView;->class:Landroid/widget/EditText;

    .line 6
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x101009c

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 7
    invoke-virtual {v3, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v6, [I

    .line 8
    invoke-virtual {v3, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 9
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
