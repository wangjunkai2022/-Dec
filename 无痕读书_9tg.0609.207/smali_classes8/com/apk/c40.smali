.class public Lcom/apk/c40;
.super Ljava/lang/Object;
.source "IndicatorViewPager.java"

# interfaces
.implements Lcom/apk/b40$new;


# instance fields
.field public final synthetic do:Lcom/apk/e40;


# direct methods
.method public constructor <init>(Lcom/apk/e40;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/c40;->do:Lcom/apk/e40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/c40;->do:Lcom/apk/e40;

    iget-object p1, p1, Lcom/apk/e40;->if:Landroidx/viewpager/widget/ViewPager;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
