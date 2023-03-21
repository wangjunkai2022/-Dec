.class public abstract Lcom/apk/e40$do;
.super Lcom/apk/e40$for;
.source "IndicatorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/e40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "do"
.end annotation


# instance fields
.field public do:Lcom/apk/a40;

.field public for:Lcom/apk/b40$if;

.field public if:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/e40$for;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/e40$do$if;

    invoke-direct {v0, p0}, Lcom/apk/e40$do$if;-><init>(Lcom/apk/e40$do;)V

    iput-object v0, p0, Lcom/apk/e40$do;->for:Lcom/apk/b40$if;

    .line 3
    new-instance v0, Lcom/apk/e40$do$do;

    invoke-direct {v0, p0, p1}, Lcom/apk/e40$do$do;-><init>(Lcom/apk/e40$do;Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/apk/e40$do;->do:Lcom/apk/a40;

    return-void
.end method


# virtual methods
.method public abstract do()I
.end method
