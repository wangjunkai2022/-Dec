package com.bytedance.sdk.openadsdk.api.plugin;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.apk.Cgoto;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.TTPluginListener;
import com.bytedance.sdk.openadsdk.common.CommonListener;
import com.bytedance.sdk.openadsdk.downloadnew.core.ExitInstallListener;
import java.lang.ref.WeakReference;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes8.dex */
public final class a implements TTAdManager {

    /* renamed from: a  reason: collision with root package name */
    public static final a f11412a = new a();
    public volatile TTAdManager b;

    /* renamed from: com.bytedance.sdk.openadsdk.api.plugin.a$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class AnonymousClass1 implements b<TTAdNative> {

        /* renamed from: a  reason: collision with root package name */
        public TTAdNative f11413a;
        public final /* synthetic */ WeakReference b;

        public AnonymousClass1(WeakReference weakReference) {
            this.b = weakReference;
        }

        @Override // com.bytedance.sdk.openadsdk.api.plugin.a.b
        public void a(final InterfaceC0123a<TTAdNative> interfaceC0123a) {
            TTAdNative tTAdNative = this.f11413a;
            if (tTAdNative != null) {
                interfaceC0123a.a(tTAdNative);
            } else {
                a.this.call(new InterfaceC0123a<TTAdManager>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.1.1
                    @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
                    public void a(TTAdManager tTAdManager) {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        anonymousClass1.f11413a = tTAdManager.createAdNative((Context) anonymousClass1.b.get());
                        interfaceC0123a.a(AnonymousClass1.this.f11413a);
                    }
                });
            }
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.api.plugin.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public interface InterfaceC0123a<T> {
        void a(T t);
    }

    /* loaded from: classes8.dex */
    public interface b<T> {
        void a(InterfaceC0123a<T> interfaceC0123a);
    }

    /* loaded from: classes8.dex */
    public interface c<T> extends InterfaceC0123a<T> {
        void a();
    }

    /* loaded from: classes8.dex */
    public static final class d implements TTAdNative {

        /* renamed from: a  reason: collision with root package name */
        public b<TTAdNative> f11425a;

        public d(b<TTAdNative> bVar) {
            this.f11425a = bVar;
        }

        private final void a(CommonListener commonListener, InterfaceC0123a<TTAdNative> interfaceC0123a) {
            try {
                this.f11425a.a(interfaceC0123a);
            } catch (Throwable th) {
                if (commonListener != null) {
                    StringBuilder m1016super = Cgoto.m1016super("Load ad failed: ");
                    m1016super.append(th.getMessage());
                    commonListener.onError(4202, m1016super.toString());
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadBannerAd(final AdSlot adSlot, final TTAdNative.BannerAdListener bannerAdListener) {
            a(bannerAdListener, new InterfaceC0123a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.10
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadBannerAd(adSlot, bannerAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadBannerExpressAd(final AdSlot adSlot, final TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
            a(nativeExpressAdListener, new InterfaceC0123a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.5
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadBannerExpressAd(adSlot, nativeExpressAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadDrawFeedAd(final AdSlot adSlot, final TTAdNative.DrawFeedAdListener drawFeedAdListener) {
            a(drawFeedAdListener, new InterfaceC0123a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.8
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadDrawFeedAd(adSlot, drawFeedAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadExpressDrawFeedAd(final AdSlot adSlot, final TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
            a(nativeExpressAdListener, new InterfaceC0123a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.4
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadExpressDrawFeedAd(adSlot, nativeExpressAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadFeedAd(final AdSlot adSlot, final TTAdNative.FeedAdListener feedAdListener) {
            a(feedAdListener, new InterfaceC0123a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.1
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadFeedAd(adSlot, feedAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadFullScreenVideoAd(final AdSlot adSlot, final TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
            a(fullScreenVideoAdListener, new InterfaceC0123a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.2
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadFullScreenVideoAd(adSlot, fullScreenVideoAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadInteractionAd(final AdSlot adSlot, final TTAdNative.InteractionAdListener interactionAdListener) {
            a(interactionAdListener, new InterfaceC0123a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.11
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadInteractionAd(adSlot, interactionAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadInteractionExpressAd(final AdSlot adSlot, final TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
            a(nativeExpressAdListener, new InterfaceC0123a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.6
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadInteractionExpressAd(adSlot, nativeExpressAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadNativeAd(final AdSlot adSlot, final TTAdNative.NativeAdListener nativeAdListener) {
            a(nativeAdListener, new InterfaceC0123a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.9
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadNativeAd(adSlot, nativeAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadNativeExpressAd(final AdSlot adSlot, final TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
            a(nativeExpressAdListener, new InterfaceC0123a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.3
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadNativeExpressAd(adSlot, nativeExpressAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadRewardVideoAd(final AdSlot adSlot, final TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
            a(rewardVideoAdListener, new InterfaceC0123a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.14
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadRewardVideoAd(adSlot, rewardVideoAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadSplashAd(final AdSlot adSlot, final TTAdNative.SplashAdListener splashAdListener, final int i) {
            a(splashAdListener, new InterfaceC0123a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.12
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadSplashAd(adSlot, splashAdListener, i);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadStream(final AdSlot adSlot, final TTAdNative.FeedAdListener feedAdListener) {
            a(feedAdListener, new InterfaceC0123a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.7
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadStream(adSlot, feedAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadSplashAd(final AdSlot adSlot, final TTAdNative.SplashAdListener splashAdListener) {
            a(splashAdListener, new InterfaceC0123a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.13
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadSplashAd(adSlot, splashAdListener);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void call(final InterfaceC0123a<TTAdManager> interfaceC0123a) {
        if (this.b != null) {
            try {
                interfaceC0123a.a(this.b);
                return;
            } catch (Throwable th) {
                StringBuilder m1016super = Cgoto.m1016super("Unexpected manager call error: ");
                m1016super.append(th.getMessage());
                com.bytedance.sdk.openadsdk.api.a.d("PluginDefaultAdManager", m1016super.toString());
                e.a(th);
                return;
            }
        }
        ScheduledExecutorService scheduledExecutorService = f.f11452a;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.submit(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.8
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (a.this.b != null) {
                            interfaceC0123a.a(a.this.b);
                            return;
                        }
                        if (interfaceC0123a instanceof c) {
                            ((c) interfaceC0123a).a();
                        }
                        com.bytedance.sdk.openadsdk.api.a.d("PluginDefaultAdManager", "Not ready, no manager");
                    } catch (Throwable th2) {
                        StringBuilder m1016super2 = Cgoto.m1016super("Unexpected manager call error: ");
                        m1016super2.append(th2.getMessage());
                        com.bytedance.sdk.openadsdk.api.a.d("PluginDefaultAdManager", m1016super2.toString());
                        e.a(th2);
                    }
                }
            });
        } else {
            com.bytedance.sdk.openadsdk.api.a.d("PluginDefaultAdManager", "Not ready, no executor");
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public TTAdNative createAdNative(Context context) {
        return new d(new AnonymousClass1(new WeakReference(context)));
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public String getBiddingToken(AdSlot adSlot) {
        if (this.b != null) {
            return this.b.getBiddingToken(adSlot);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public <T> T getExtra(final Class<T> cls, final Bundle bundle) {
        if (this.b != null) {
            return (T) this.b.getExtra(cls, bundle);
        }
        if (cls == Bundle.class && bundle != null && bundle.getInt("action", 0) == 1) {
            call(new c<TTAdManager>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.4
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.c
                public void a() {
                    com.bytedance.sdk.openadsdk.api.plugin.d.a(bundle);
                }

                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
                public void a(TTAdManager tTAdManager) {
                    tTAdManager.getExtra(cls, bundle);
                }
            });
            return null;
        }
        call(new InterfaceC0123a<TTAdManager>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.5
            @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
            public void a(TTAdManager tTAdManager) {
                tTAdManager.getExtra(cls, bundle);
            }
        });
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public String getPluginVersion() {
        return this.b != null ? this.b.getPluginVersion() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public String getSDKVersion() {
        return "4.6.0.7";
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public int getThemeStatus() {
        if (this.b != null) {
            return this.b.getThemeStatus();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public boolean onlyVerityPlayable(String str, int i, String str2, String str3, String str4) {
        if (this.b != null) {
            return this.b.onlyVerityPlayable(str, i, str2, str3, str4);
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public void register(final Object obj) {
        final Bundle bundle;
        if (obj instanceof TTPluginListener) {
            TTPluginListener tTPluginListener = (TTPluginListener) obj;
            bundle = e.a(TTAppContextHolder.getContext()).a(tTPluginListener.packageName(), tTPluginListener.config());
        } else {
            bundle = obj;
        }
        call(new InterfaceC0123a<TTAdManager>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.2
            @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
            public void a(TTAdManager tTAdManager) {
                tTAdManager.register(bundle);
                if (obj instanceof TTPluginListener) {
                    e.a(TTAppContextHolder.getContext()).a((TTPluginListener) obj);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public void requestPermissionIfNecessary(final Context context) {
        call(new InterfaceC0123a<TTAdManager>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.6
            @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
            public void a(TTAdManager tTAdManager) {
                tTAdManager.requestPermissionIfNecessary(context);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public void setThemeStatus(final int i) {
        call(new InterfaceC0123a<TTAdManager>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.7
            @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
            public void a(TTAdManager tTAdManager) {
                a.this.b.setThemeStatus(i);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public boolean tryShowInstallDialogWhenExit(Activity activity, ExitInstallListener exitInstallListener) {
        return this.b != null && this.b.tryShowInstallDialogWhenExit(activity, exitInstallListener);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public void unregister(final Object obj) {
        call(new InterfaceC0123a<TTAdManager>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.3
            @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0123a
            public void a(TTAdManager tTAdManager) {
                tTAdManager.unregister(obj);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public String getBiddingToken(AdSlot adSlot, boolean z, int i) {
        if (this.b != null) {
            return this.b.getBiddingToken(adSlot, z, i);
        }
        return null;
    }

    public void a(TTAdManager tTAdManager) {
        this.b = tTAdManager;
    }
}
