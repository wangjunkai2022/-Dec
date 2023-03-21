.class public Lcom/biquge/ebook/app/ad/AdFloatView$do;
.super Ljava/lang/Object;
.source "AdFloatView.java"

# interfaces
.implements Lcom/apk/j1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ad/AdFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ad/AdFloatView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ad/AdFloatView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView$do;->do:Lcom/biquge/ebook/app/ad/AdFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/AdFloatView$do;->do:Lcom/biquge/ebook/app/ad/AdFloatView;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ad/AdFloatView;->for:Lcom/biquge/ebook/app/ad/AdFloatView$for;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/biquge/ebook/app/ad/AdFloatView$for;->onShow()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/AdFloatView$do;->do:Lcom/biquge/ebook/app/ad/AdFloatView;

    .line 5
    iget-object v1, v0, Lcom/biquge/ebook/app/ad/AdFloatView;->const:Lcom/apk/bg;

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public if()V
    .locals 0

    return-void
.end method
