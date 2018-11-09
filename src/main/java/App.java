import java.util.Optional;
import java.util.ArrayList;

import com.spotify.apollo.Environment;
import com.spotify.apollo.RequestContext;
import com.spotify.apollo.Response;
import com.spotify.apollo.httpservice.HttpService;
import com.spotify.apollo.httpservice.LoadingException;
import com.spotify.apollo.route.Route;

import com.hankcs.hanlp.HanLP;
import com.hankcs.hanlp.tokenizer.NLPTokenizer;
import com.hankcs.hanlp.tokenizer.IndexTokenizer;
import com.hankcs.hanlp.seg.NShort.NShortSegment;
import com.hankcs.hanlp.model.crf.CRFLexicalAnalyzer;

import com.hankcs.hanlp.seg.Segment;
import com.hankcs.hanlp.dictionary.CustomDictionary;
import com.hankcs.hanlp.utility.Predefine;

public final class App {

    public static void main(String... args) throws LoadingException {
        HanLP.Config.ShowTermNature = false;
        HttpService.boot(App::init, "apollo", args);
    }

    static void init(Environment environment) {
        environment.routingEngine()
            .registerAutoRoute(Route.sync("POST", "/", rc -> {
                String str = rc.request().parameter("str").get();
                String cut = HanLP.segment(str).toString();
                ArrayList<String> = HanLP.segment(str);
                System.out.println(HanLP.segment(str).getClass().getName());
                return cut;
            }));
    }
 }
