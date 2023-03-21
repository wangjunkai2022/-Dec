.class public Lcom/apk/dd;
.super Ljava/lang/Object;
.source "ReadFontPopupView.java"

# interfaces
.implements Lcom/apk/j1;


# instance fields
.field public final synthetic do:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/apk/dd;->do:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/dd;->do:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/dd;->do:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
