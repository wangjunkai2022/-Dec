.class public Lcom/apk/xh;
.super Ljava/lang/Object;
.source "MarqueeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:I

.field public final synthetic for:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;

.field public final synthetic if:I


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/xh;->for:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;

    iput p2, p0, Lcom/apk/xh;->do:I

    iput p3, p0, Lcom/apk/xh;->if:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/xh;->for:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;

    iget v1, p0, Lcom/apk/xh;->do:I

    iget v2, p0, Lcom/apk/xh;->if:I

    invoke-static {v0, v1, v2}, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->do(Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;II)V

    return-void
.end method
