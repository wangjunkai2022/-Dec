.class public Lcom/youth/banner/view/BannerViewPager$do;
.super Ljava/lang/Object;
.source "BannerViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youth/banner/view/BannerViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/youth/banner/view/BannerViewPager;


# direct methods
.method public constructor <init>(Lcom/youth/banner/view/BannerViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/youth/banner/view/BannerViewPager$do;->do:Lcom/youth/banner/view/BannerViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/youth/banner/view/BannerViewPager$do;->do:Lcom/youth/banner/view/BannerViewPager;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/youth/banner/view/BannerViewPager;->if:Z

    return-void
.end method
